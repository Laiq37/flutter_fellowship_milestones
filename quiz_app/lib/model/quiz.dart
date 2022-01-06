class Quiz {
  final String question;
  final List<String> options;
  final String answer;

  Quiz({required this.question, required this.options, required this.answer});
}

final List<Map<String, List<Quiz>>> _listOfQuiz = [
  {
    'Math': [
      Quiz(
          question:
              'What is the volume of a box with the dimensions of 10ft. by 5ft. by 6ft?',
          options: ['300 cubic ft.', '3000 cubic ft.', '1 cubic ft.'],
          answer: '300 cubic ft.'),
      Quiz(
          question: 'Solve. 47x69=?',
          options: ['3243', '3300', '6821'],
          answer: '3243'),
      Quiz(
          question: 'What is a prime number?',
          options: [
            'A number with more than 2 factors',
            'A whole number',
            'A number with only factors(1 and itself)',
          ],
          answer: 'A number with only factors(1 and itself)'),
      Quiz(
          question: 'What is the percent of 4/5?',
          options: ['60%', '85%', '80%'],
          answer: '80%'),
      Quiz(
          question:
              'A decimal is shown below. 0.267 What place value is the "7" in?',
          options: ['Thousands place', 'Hundredths place', 'Thousandths place'],
          answer: 'Thousandths place'),
    ],
  },
  {
    'Programming': [
      Quiz(
          question: 'What does HTML stand for?',
          options: [
            'Hyper Text Markup Language',
            'Hot Mail',
            'Hyper Text Marker Language'
          ],
          answer: 'Hyper Text Markup Language'),
      Quiz(
          question:
              'First operating system designed using C programming language.',
          options: ['Windows', 'UNIX', 'DOS'],
          answer: 'UNIX'),
      Quiz(
          question: 'An exception is ',
          options: ['Runtime error', 'Compile time error', 'Logical error'],
          answer: 'Runtime error'),
      Quiz(
          question: 'C is the successor of which programming language.',
          options: ['C++', 'B', 'B++'],
          answer: 'B'),
      Quiz(
          question:
              'Which options are correct to create an empty set in Python?n',
          options: ['set()', '()', '[]'],
          answer: 'set()'),
    ],
  },
  {
    'Science': [
      Quiz(
          question: 'Oil, natural gas and coal are examples of',
          options: ['Geothermal resources', 'Fossil fuels', 'Biofuels'],
          answer: 'Fossil fuels'),
      Quiz(
          question:
              'Which of the following is an example of genetic engineering?',
          options: [
            'Inserting a gene into plants that makes them resistant to insects',
            'Growing a whole plant from a single cell',
            'Attaching the root of one type of plant to the stem of another type of plant'
          ],
          answer:
              'Inserting a gene into plants that makes them resistant to insects'),
      Quiz(
          question: 'What is the main cause of seasons on the Earth?',
          options: [
            'The speed that the Earth rotates around the sun',
            'Changes in the amount of energy coming from the sun',
            'The tilt of the Earth\'s axis in relation to the sun'
          ],
          answer: 'The tilt of the Earth\'s axis in relation to the sun'),
      Quiz(
          question:
              'An antacid relieves an overly acidic stomach because the main components of antacids are',
          options: ['Acids', 'Bases', 'Neutral'],
          answer: 'Bases'),
      Quiz(
          question:
              'Which of these is a major concern about the overuse of antibiotics?',
          options: [
            'Antibiotics will get into the water system',
            'There will be an antibiotic shortage',
            'It can lead to antibiotic-resistant bacteria'
          ],
          answer: 'It can lead to antibiotic-resistant bacteria'),
    ]
  },
  {
    'History': [
      Quiz(
          question: 'Pakistan became an independent nation on?',
          options: ['July 5, 1947', 'August 14, 1947', 'March 23, 1948'],
          answer: 'August 14, 1947'),
      Quiz(
          question: 'When was Pakistan\'s first constitution adopted?',
          options: ['1947', '1962', '1956'],
          answer: '1956'),
      Quiz(
          question:
              'Pakistan became free from British control in 1947. When was the Lahore Resolution approved, which called for a sovereign, independent Muslim state?',
          options: ['1946', ' 1940', '1943'],
          answer: '1940'),
      Quiz(
          question:
              'On September 11, 1948, Jinnah died in Karachi at the age of 72. What was the cause of his death?',
          options: ['Tuberculosis', 'Cancer', 'Heart attack'],
          answer: 'Tuberculosis'),
      Quiz(
          question:
              'Zia was killed in an airplane crash, possibly caused by sabotage, in?',
          options: ['July 1988', 'August 1988', 'September 1988'],
          answer: 'August 1988'),
    ]
  },
  {
    'General Knowledge': [
      Quiz(
          question: 'Which is the fastest bird in the world?',
          options: ['Hummingbird', 'Bald Eagle', 'Peregrine Falcon'],
          answer: 'Peregrine Falcon'),
      Quiz(
          question: 'What is the tallest waterfall in the world?',
          options: [
            'Angel Falls, Venezuela',
            'Wailua Falls, Hawaii',
            'Niagara Falls, New York'
          ],
          answer: 'Angel Falls, Venezuela'),
      Quiz(
          question: 'About how many scents can a human nose remember?',
          options: ['Q', 'F', 'J'],
          answer: 'J'),
      Quiz(
          question:
              'What letter is not present anywhere on the periodic table of elements?',
          options: ['Urine', 'Mint tea', 'Salt water'],
          answer: 'Urine'),
      Quiz(
          question: 'What is something the ancient Romans used as mouthwash?',
          options: ['Around 500', 'Around 50,000', 'Around 10,000'],
          answer: 'Around 50,000'),
    ]
  },
];

List<Map<String, List<Quiz>>> get listOfQuiz => [..._listOfQuiz];
