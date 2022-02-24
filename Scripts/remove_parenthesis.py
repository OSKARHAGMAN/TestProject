def convert_into_number(webshop_stock):
    """Remove parenthesis from number and return number """
    new_string = webshop_stock.replace("(","")
    number = new_string.replace(")","")
    return int(number)