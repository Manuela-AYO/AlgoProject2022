from tkinter import Tk, Canvas, PhotoImage,ttk, Button, Label, mainloop, StringVar, OptionMenu
import tkinter as tk

# ---------------------------- CONSTANTS ------------------------------- #
PINK = "#e2979c"
RED = "#e7305b"
GREEN = "#9bdeac"
YELLOW = "#f7f5dd"
FONT_NAME = "Courier"

# ---------------------------- UI SETUP ------------------------------- #
window = Tk()
window.title("Knapsack problem")
window.config(padx=100, pady=50, bg=YELLOW)
window.geometry( "300x300" )


knapsack_path = {
    "01 Knapsack": r"01Knapsack\Algorithms",
    "Multiple Knapsack": r"MultipleKnapsack\Algorithms"
}

algo_path = {
    "Branch and Bound": r"BranchAndBound",
}


# Dropdown menu options
KNAPSACK_OPTIONS = [
    "01 Knapsack",
    "Multiple Knapsack",
    "Multidimensional Knapsack"
]

KNAPSACK_ALGO = [["Ant Colony","Branch and Bound", "Brute Force", "Dynamic Programming Top Down", \
                    "Dynamic Programming Bottom Up", "Fully Polynomial", "Genetic Programming", \
                    "Greedy By Value","Greedy By Ratio", "Greedy By Weight","Greedy By Ratio and Converge",\
                    "Randomized"],
                 ["Greedy By Weight","Greedy By Converge"],
                 []
]

# Create Dropdown menu
selected_knapsack = ttk.Combobox(window, width=37, value=(KNAPSACK_OPTIONS))
selected_knapsack.grid(row=3, column=1, columnspan=2, padx=10, pady=2, sticky='w')
selected_knapsack.set(KNAPSACK_OPTIONS[0])

def callback(eventObject):
    abc = eventObject.widget.get()
    knapsack = selected_knapsack.get()
    index=KNAPSACK_OPTIONS.index(knapsack)
    ks_algo.config(values=KNAPSACK_ALGO[index])


# Create Sub Dropdown menu
ks_algo = ttk.Combobox(window, width=37)
ks_algo.grid(row=4, column=1, columnspan=2, padx=10, pady=2, sticky='w')
ks_algo.bind('<Button-1>', callback)


# Labels
title_label = Label(text="Knapsack Problem", fg=GREEN, bg=YELLOW, font=(FONT_NAME, 50))
title_label.grid(column=1, row=0)

time_label = Label(text="Time to Run(in milliseconds)", fg=GREEN, bg=YELLOW)
time_label.grid(column=1, row=10)

time =ttk.Entry(window, width=10,font=22)
time.grid(row=10, column=2) # for running time it is -

def ok():
    selected_knapsack_name = selected_knapsack.get()
    ks_algo_name = ks_algo.get()
    time_fig = time.get()
    print(selected_knapsack_name, ks_algo_name, time_fig)


# Create button, it will change label text
button = Button(window, text="Run", command=ok)
button.grid(row=16, column=1)
button.config(bg=GREEN)
# button.pack()


# Execute tkinter
window.mainloop()

# type of the file ie t or c
# add parameter for name of csv
# have user provide name of file they want to store output in
# have user provide theoretical optimal vcalue and if they don't know they put a -
# iterations for randomized and ant colony, the rest have - as the value there
# add a timer



# # Buttons
# start = Button(text="Start", highlightthickness=0, bg=YELLOW, command=start_timer)
# start.grid(column=0, row=2)
# reset = Button(text="Reset", bg=YELLOW, highlightthickness=0, command=reset_timer)
# reset.grid(column=2, row=2)


# window.mainloop()  


