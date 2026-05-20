from pynput import mouse

def on_click(x, y, button, pressed):
    # نتحقق فقط عندما يتم رفع الإصبع عن الزر (mouseup)
    if not pressed:
        if button == mouse.Button.left:
            print("Left button released")
            # هنا تضع منطقك الخاص مثل: Input.mouse.left = False
        elif button == mouse.Button.middle:
            print("Middle button released")
        elif button == mouse.Button.right:
            print("Right button released")

# بدء الاستماع لأحداث الفأرة بشكل مستمر
with mouse.Listener(on_click=on_click) as listener:
    listener.join()

