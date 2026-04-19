import pyautogui
import time

def draw_pyramid():
    try:
        n = int(input("Enter the number of rows for the pyramid: "))
    except ValueError:
        print("Please enter a valid integer.")
        return

    print("Switch to the text editor where you want the pyramid to be drawn.")
    print("Drawing will start in 5 seconds...")
    time.sleep(5)

    for i in range(n):
        hashes = '#' * (i + 1)
        pyautogui.typewrite(hashes + '\n', interval=0.05)

if __name__ == '__main__':
    draw_pyramid()
