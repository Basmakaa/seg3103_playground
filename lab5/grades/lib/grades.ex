defmodule Grades.Calculator do
  def percentage_grade(%{homework: homework, labs: labs, midterm: midterm, final: final}) do
    #Q2.1 AVG method
    avg_homework = avg(homework)
    avg_labs = avg(labs)
    #Q2.3 calc grade method
    mark = calculate_grade(avg_labs, avg_homework, midterm, final)
    round(mark * 100)
  end

  def letter_grade(%{homework: homework, labs: labs, midterm: midterm, final: final}) do
    #Q2.1 AVG method
    avg_homework = avg(homework)

    avg_labs = avg(labs)


    #Q2.4 refactoring 2
    avg_exams = calculate_avg_exams(midterm, final)

    #Q2.4 refactoring
    num_labs = get_num_labs(labs)
      # Q2.2
      if failed_to_participate?(avg_homework, avg_exams, num_labs) do
      "EIN"
    else
      #Q2.3 calc grade method
      mark = calculate_grade(avg_labs, avg_homework, midterm, final)

      cond do
        mark > 0.895 -> "A+"
        mark > 0.845 -> "A"
        mark > 0.795 -> "A-"
        mark > 0.745 -> "B+"
        mark > 0.695 -> "B"
        mark > 0.645 -> "C+"
        mark > 0.595 -> "C"
        mark > 0.545 -> "D+"
        mark > 0.495 -> "D"
        mark > 0.395 -> "E"
        :else -> "F"
      end
    end
  end

  def numeric_grade(%{homework: homework, labs: labs, midterm: midterm, final: final}) do
   #Q2.1 AVG method
    avg_homework = avg(homework)

    avg_labs = avg(labs)

    #Q2.4 refactoring 2
    avg_exams = calculate_avg_exams(midterm, final)

    #Q2.4 refactoring
    num_labs = get_num_labs(labs)

     # Q2.2
     if failed_to_participate?(avg_homework, avg_exams, num_labs) do
      0
    else
       #Q2.3 calc grade method
       mark = calculate_grade(avg_labs, avg_homework, midterm, final)

      cond do
        mark > 0.895 -> 10
        mark > 0.845 -> 9
        mark > 0.795 -> 8
        mark > 0.745 -> 7
        mark > 0.695 -> 6
        mark > 0.645 -> 5
        mark > 0.595 -> 4
        mark > 0.545 -> 3
        mark > 0.495 -> 2
        mark > 0.395 -> 1
        :else -> 0
      end
    end
  end
  # Q2.1 AVG method
  def avg(note) do
    if Enum.count(note) == 0 do
          0
        else
          Enum.sum(note) / Enum.count(note)
        end
    end
    #Q2.2 failed to participate method
    def failed_to_participate?(avg_homework, avg_exams, num_labs) do
      if avg_homework < 0.4 || avg_exams < 0.4 || num_labs < 3 do
        true
      else
        false
      end
      end
      # calc grade Q2.3
    def calculate_grade(avg_labs, avg_homework, midterm, final) do
        0.2 * avg_labs + 0.3 * avg_homework + 0.2 * midterm + 0.3 * final
        end

       # 1 additional refactoring Q2.4
    def get_num_labs(labs) do
          labs
              |> Enum.reject(fn mark -> mark < 0.25 end)
              |> Enum.count()
    end
    # refactoring 2 Q2.4
    def calculate_avg_exams(midterm, final) do
      (midterm + final) / 2
      end
end
