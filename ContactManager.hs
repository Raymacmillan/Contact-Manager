module ContactManager where
    import Menu
    import Contacts

    contactManager :: [Contact] -> IO ()
    contactManager contacts = do
        option <- mainMenu

        case option of
            "1" -> do
                newContacts <- addContact contacts
                contactManager newContacts
            "2" -> do
                newContacts <- removeContact contacts
                contactManager newContacts
            "3" -> do
                listAllContacts contacts
                contactManager contacts
            "4" -> do
                searchContact contacts
                contactManager contacts
            "5" -> do
                printToAFile contacts
                contactManager contacts
            "6" -> do
                putStrLn "Goodbye!"
                return ()
            _ -> putStrLn "Invalid choice"
