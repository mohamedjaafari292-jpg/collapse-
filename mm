# دالة لتجربة الكلمات الموجودة داخل الملف
def start_attack(target_password):
    
    # فتح الملف الذي يحتوي على الكلمات الشائعة
    with open("passwords.txt", "r") as file:
        # قراءة الملف سطراً بسطر
        for line in file:
            # إزالة أي مسافات أو سطر جديد من الكلمة
            guess = line.strip()
            
            # المقارنة
            if guess == target_password:
                print("Success! Password found: " + guess)
                return
                
    print("Attack failed. Password not in the file.")

# تشغيل الأداة بكلمة المرور المستهدفة
start_attack("jaafarimohamed")

