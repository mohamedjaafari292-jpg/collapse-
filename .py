def auto_check():
    secret_target = "7777"
    
    # توليد أرقام تلقائية من 1 إلى 10 والتخمين عليها
    for number in range(1, 8880):
        guess = str(number)
        print("Scanning code: " + guess)
        
        if guess == secret_target:
            print("Target found! Code is: " + guess)
            break

auto_check()

