class AccentUtils {
  static String removeAccent(String str) {
    const withDiacritics =
        'áàảãạăắằẳẵặâấầẩẫậđéèẻẽẹêếềểễệíìỉĩịóòỏõọôốồổỗộơớờởỡợúùủũụưứừửữựýỳỷỹỵ'
        'ÁÀẢÃẠĂẮẰẲẴẶÂẤẦẨẪẬĐÉÈẺẼẸÊẾỀỂỄỆÍÌỈĨỊÓÒỎÕỌÔỐỒỔỖỘƠỚỜỞỠỢÚÙỦŨỤƯỨỪỬỮỰÝỲỶỸỴ';
    const without =
        'aaaaaaaaaaaaaaaaadeeeeeeeeeeeiiiiiiooooooooooooooooouuuuuuuuuuuyyyyy'
        'AAAAAAAAAAAAAAAAADEEEEEEEEEEEIIIIIIOOOOOOOOOOOOOOOOUUUUUUUUUUUYYYYY';

    return str
        .split('')
        .map((c) {
      final index = withDiacritics.indexOf(c);
      if (index == -1) return c;
      return without[index];
    })
        .join('');
  }
}
