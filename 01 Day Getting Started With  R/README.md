# Write and execute R code in a Jupyter Notebook.

To write and execute R code in a Jupyter Notebook, you'll need to follow these steps:

1. **Install R and Jupyter**: Ensure you have R and Jupyter Notebook installed on your system. If you haven't already, you can install them using a package manager like `conda` or `pip`:

   ```
   # Install Jupyter Notebook using pip
   pip install notebook

   # Install R
   # On Ubuntu or Debian-based systems
   sudo apt-get install r-base
   ```

2. **Install R Kernel for Jupyter**: To use R in Jupyter Notebook, you'll need to install the R kernel. You can do this using the `IRkernel` package in R:

   Open an R session in your terminal or R console and run:

   ```R
   install.packages("IRkernel")
   IRkernel::installspec()
   ```

3. **Launch Jupyter Notebook**: Start Jupyter Notebook by running the following command in your terminal:

   ```
   jupyter notebook
   ```

   This will open a new browser window/tab with the Jupyter Notebook interface.

4. **Create a New Notebook**: In the Jupyter Notebook interface, click the "New" button and select "R" from the dropdown menu. This will create a new notebook with an R kernel.

5. **Write and Execute R Code**: In the notebook, you'll see cells where you can write and execute R code. You can change the cell type to "Code" if it's not already by selecting "Code" from the dropdown menu in the toolbar. Then, you can write your R code in the cell and execute it by pressing Shift+Enter or clicking the "Run" button in the toolbar.

   For example:

   ```R
   # This is an R code cell
   x <- c(1, 2, 3, 4, 5)
   mean_x <- mean(x)
   mean_x
   ```

   After running the cell, the output will be displayed below it.

6. **Markdown Cells**: You can also insert Markdown cells to add explanations, documentation, or formatted text to your notebook. Select "Markdown" from the dropdown menu and write Markdown content in these cells.

7. **Save Your Notebook**: Don't forget to save your work regularly by clicking the save icon in the toolbar or pressing Ctrl+S (Cmd+S on macOS).

8. **Close and Shut Down**: When you're done, close the Jupyter Notebook tab in your browser. To shut down the notebook server, go to the terminal where Jupyter Notebook is running and press Ctrl+C. Confirm the shutdown if prompted.

That's it! You can now write and execute R code in Jupyter Notebook using the R kernel. Jupyter Notebook is a versatile environment that allows you to mix code, documentation, and visualizations in a single document, making it a powerful tool for data analysis and exploration.
