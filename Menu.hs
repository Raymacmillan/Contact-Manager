module Menu where
    mainMenu :: IO String
    mainMenu = do
        putStrLn "1. Add a new Contact"
        putStrLn "2. Remove Contact"
        putStrLn "3. List all Contacts"
        putStrLn "4. Search Contact by name"
        putStrLn "5. Save Contacts to a file"
        putStrLn "6. Exit"
        choice <- getLine
        return choice