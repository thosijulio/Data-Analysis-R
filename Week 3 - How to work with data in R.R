
# arrange usage example (asc & desc)
penguins %>% arrange(bill_length_mm);
penguins %>% arrange(-bill_length_mm);


# save the arranged data frame in a variable
arrangedPenguins <- penguins %>% arrange(bill_depth_mm);
view(arrangedPenguins)

# example of summarize + group_by functions usage
# the drop_na() function is to remove any missing value
penguins %>% group_by(island) %>% drop_na() %>% summarize(max_bill_length_mm = max(bill_length_mm))

# example of using group_by and summarize with more than one argument
penguins %>% group_by(island, species) %>% drop_na() %>% summarise(max_bl = max(bill_length_mm), min_bl = min(bill_length_mm))

# example of the filter function
penguins %>% filter(species == 'Adelie')

id <- c(1:10)
first_name <- c("John", "Rob", "Rachel", "Christy", "Johnson", "Candace", "Carlson", "Pansy", "Darius", "Claudia")
last_name <- c("Mendes", "Stewart", "Abrahamson", "Hickman", "Harper", "Miller", "Landy", "Jordan", "Berry", "Garcia")
job_title <- c("Professional", "Programming", "CEO", "Administrator", "Developer","Professional", "Programming", "CEO", "Administrator", "Developer")

employee <- data.frame(id, first_name, last_name, job_title)

# Example of the unite function and inserting the combined info into a column in the employee data frame
employee$full_name = unite(employee, 'full_name', first_name, last_name, sep=" ")$full_name
# Example of the separe function and inserting the first_name info into a column in the employee data frame, in upper case
employee$first_name_upper = toupper(separate(employee, full_name, into=c('first_name_upper'), sep=" ")$first_name_upper)
# Mutate example of use
employee %>% mutate(id_multiplied_by_two=id * 2)

mutate(employee, teste = id * 2)

employee

glimpse(employee)

employee %>% rename(test = first_name)

install.packages(datasets)
library(datasets)
glimpse(ToothGrowth)

