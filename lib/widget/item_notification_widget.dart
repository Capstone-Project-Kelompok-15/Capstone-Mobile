
    return Column(
      children: [
        ListTile(
          horizontalTitleGap: 20,
          contentPadding: const EdgeInsets.all(0),
          leading: CircleAvatar(
            child: Text(
              firstName.substring(0, 1), // Mengambil huruf pertama dari nama depan
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.blue,
          ),
          title: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: fullName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
                const TextSpan(text: " "),
                TextSpan(
                  text: randomMessage,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          subtitle: Text(
            currentTime,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}