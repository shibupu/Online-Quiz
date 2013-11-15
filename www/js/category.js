function validate_form() {
    var elements = ['name', 'description'];
    for (var i = 0; i < elements.length; i++) {
        if (validate_element(elements[i]) == false) return;
    }

    document.category.submit();
}
