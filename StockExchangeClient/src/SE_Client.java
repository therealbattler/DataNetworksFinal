import java.util.ArrayList;
import java.util.Scanner;

/**
 * Created by Egor Tamarin on 26-Mar-17.
 * The main class for the stock exchange client.
 */
public class SE_Client {
    static boolean clientToken = false;
    final static String address = "localhost";
    final static int port = 8000;
    public static void main(String args[]){
        System.out.println("Welcome to the Saxion Stock Exchange.");
        System.out.println("Please log in to proceed.");
        while (!clientToken) { //run login until correct
            String login = pollUser("LOGIN:");
            String password = pollUser("PASSWORD:");
            Authorizator auth = new Authorizator(login, password);
            try {
                clientToken = auth.authorizeUser(address, port);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        // now that we've logged in, we can do everything else
        System.out.println("Authorization successful.");
        System.out.println("Type 'help' for help.\n");
        String userIn;
        String systemResponse;
        ArrayList<String> serverResponse = new ArrayList<>();
        while (true){
            userIn = pollUser(">>");
            Message userRequest = new Message(userIn);
            userRequest.constructMessage();
            systemResponse = userRequest.getMsgToSend();
            switch(systemResponse){
                case "invalid":
                    System.out.println("Message is invalid and will not be sent. Try again.");
                    break;
                default:
                    try {
                        Communication comms = new Communication(address,port);
                        comms.sendMessage(userRequest);
                        serverResponse = comms.receiveMessage();
                    }catch (Exception e){
                        e.printStackTrace();
                    }
                    break;
            }
            // analyze the server response
            userRequest.analyzeMessage(serverResponse);
        }
    }
    private static String pollUser(String prompt){
        Scanner userInput = new Scanner(System.in);
        String userResponse;
        System.out.print(prompt);
        userResponse = userInput.nextLine();
        return userResponse;
    }
}
