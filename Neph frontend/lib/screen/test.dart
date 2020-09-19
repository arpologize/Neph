child: new Theme(
          data: new ThemeData(
            primaryColor: Colors.white,
            primaryColorDark: Colors.red,
          ),
          child: new TextField(
            decoration: new InputDecoration(
                border: new OutlineInputBorder(
                    borderSide: new BorderSide(color: Colors.teal)),
                hintText: 'Password',
                helperText: 'Keep it short, this is just a demo.',
                labelText: 'Life story',
                prefixIcon: const Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                prefixText: ' ',
                suffixText: 'USD',
                suffixStyle: const TextStyle(color: Colors.green)),
          ),
        ));












        Widget passwordfield() {
    return Container(
        width: 250.0,
        child: TextFormField(
          decoration: new InputDecoration(
            labelText: "Password",
            filled: true,
            fillColor: Colors.white,
            border: new OutlineInputBorder(
              borderRadius: new BorderRadius.circular(25.0),
              borderSide: new BorderSide(color: Colors.white),
            ),
          ),
          validator: (val) {
            if (val.length == 0) {
              return "Email cannot be empty";
            } else {
              return null;
            }
          },
          keyboardType: TextInputType.emailAddress,
          style: new TextStyle(fontFamily: "Poppins", color: Colors.white),
        ));
  }