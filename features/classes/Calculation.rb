class Calculation

  # калькулировавние 2-х чисел с проверкой суммы
  def summirovanie(first_count, second_count, finally_count)
    therd_count = first_count.to_i + second_count.to_i
    raise Exception, "Сумма чисел не равна полученной сумме" if therd_count != finally_count.to_i
  end

end
