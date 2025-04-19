import '../models/member.dart';

class MembersController {
  List<Member> getMembers() {
    return [
      Member(name: 'Alice Brown', role: 'Team Lead', team: 'Software Development', imageUrl: 'https://i.ytimg.com/vi/rQE5MptQO-g/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCLOyxcpWzyV0xXwpbwH27x3LOpnQ'),
      Member(name: 'James Smith', role: 'UX Designer', team: 'Product Team', imageUrl: 'https://i.ytimg.com/vi/rQE5MptQO-g/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCLOyxcpWzyV0xXwpbwH27x3LOpnQ'),
      Member(name: 'Sophia Lee', role: 'Project Manager', team: 'Operations', imageUrl: 'https://i.ytimg.com/vi/rQE5MptQO-g/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCLOyxcpWzyV0xXwpbwH27x3LOpnQ'),
      Member(name: 'Michael Green', role: 'Full Stack Dev', team: 'Engineering', imageUrl: 'https://i.ytimg.com/vi/rQE5MptQO-g/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCLOyxcpWzyV0xXwpbwH27x3LOpnQ'),
    ];
  }
}
