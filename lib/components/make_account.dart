import 'package:flutter/material.dart';

class MakePageAccountSection extends StatefulWidget {
  const MakePageAccountSection({
    Key? key,
    required this.accountimage,
    required this.accountname,
    required this.accountlocation,
  }) : super(key: key);

  final String accountimage;
  final String accountname;
  final String accountlocation;

  @override
  _MakePageAccountSectionState createState() => _MakePageAccountSectionState();
}

class _MakePageAccountSectionState extends State<MakePageAccountSection> {
  bool isFollowing = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 10.0),
                child: Image.asset(widget.accountimage),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.accountname,
                        style: const TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Row(children: [
                        Image.asset('assets/images/Location.png'),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Text(widget.accountlocation,
                          style: TextStyle(
                            color: Color(0xFFA9A9A9),
                          )),
                        )
                      ])
                    ]),
              )
            ],
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                isFollowing = !isFollowing;
              });

              // Show a dialog when following or unfollowing
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text(isFollowing
                        ? 'Now Following ${widget.accountname}'
                        : 'Unfollowed ${widget.accountname}'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('OK'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Text(
              isFollowing ? 'Unfollow' : 'Follow',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: isFollowing ? Colors.grey : Color(0xFFD14C45),
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          )
        ],
      ),
    );
  }
}
