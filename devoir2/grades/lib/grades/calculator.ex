defmodule Grades.Calculator do

    def avg(marks) do
    avg_homework =
      if Enum.count(marks) == 0 do
        0
      else
        Enum.sum(marks) / Enum.count(marks)
      end
    end

    def percentage_grade(%{homework: homework, labs: labs, midterm: midterm, final: final}) do
      avg_homework = avg(homework)
      avg_labs = avg(labs)

      mark = 0.2 * avg_homework + 0.3 * avg_labs + 0.2 * midterm + 0.3 * final
    round(mark * 100)
  end

  def letter_grade(%{homework: homework, labs: labs, midterm: midterm, final: final}) do
    avg_homework = avg(homework)
    avg_labs = avg(labs)

    avg_exams = (midterm + final) / 2
  end


  def numeric_grade(%{homework: homework, labs: labs, midterm: midterm, final: final}) do
    avg_homework = avg(homework)
    avg_labs = avg(labs)

    avg_exams = (midterm + final) / 2

    num_labs =
      labs
      |> Enum.reject(fn mark -> mark < 0.25 end)
      |> Enum.count()
    if avg_homework < 0.4 || avg_exams < 0.4 || num_labs < 3 do
      0
    else
      mark = 0.2 * avg_labs + 0.3 * avg_homework + 0.2 * midterm + 0.3 * final
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

    avg_exams = (midterm + final) / 2

    num_labs =
      labs
      |> Enum.reject(fn mark -> mark < 0.25 end)
      |> Enum.count()

    if avg_homework < 0.4 || avg_exams < 0.4 || num_labs < 3 do
      0
    else
      mark = 0.2 * avg_labs + 0.3 * avg_homework + 0.2 * midterm + 0.3 * final

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
end
