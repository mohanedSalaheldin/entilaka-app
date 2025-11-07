import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'نموذج التسجيل وتسجيل الدخول',
      home: LoginScreen(), // أو RegisterScreen حسب الحاجة
    );
  }
}

var pattern =
    'https://res.cloudinary.com/dwaxkyuva/image/upload/v1762555873/pattern_svyoyk.png';

// شاشة التسجيل (Register)
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F0E6),
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isMobile = constraints.maxWidth < 600;

          if (isMobile) {
            // 📱 عرض الموبايل
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    const SizedBox(height: 40),
                    Image.network(
                      pattern,
                      height: 100,
                    ),
                    const SizedBox(height: 20),
                    _buildForm(),
                  ],
                ),
              ),
            );
          } else {
            // 💻 عرض الويب
            return Row(
              children: [
                Container(
                  width: 90,
                  color: Colors.transparent,
                  child: Image.network(
                    pattern,
                    fit: BoxFit.cover,
                    height: double.infinity,
                    repeat: ImageRepeat.repeatY,
                  ),
                ),
                Expanded(
                  child: Center(
                    child: SingleChildScrollView(
                      // ✅ التمرير لمنع overflow
                      padding: const EdgeInsets.all(32.0),
                      child: SizedBox(
                        width: 500,
                        child: _buildForm(),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }

  Widget _buildForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildTextField(label: "المبلغ"),
        const SizedBox(height: 20),
        _buildTextField(label: "نوع المشروع"),
        const SizedBox(height: 20),
        _buildTextField(label: "المدينة"),
        const SizedBox(height: 20),
        _buildTextField(label: "الهدف الزمني"),
        const SizedBox(height: 40),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF8B6F47),
            foregroundColor: Colors.white,
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: const Text("إنشاء"),
        ),
      ],
    );
  }

  Widget _buildTextField({required String label}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontFamily: 'Cairo',
            fontSize: 16,
            color: Color(0xFF8B6F47),
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.right,
        ),
        const SizedBox(height: 8),
        TextField(
          textAlign: TextAlign.right,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide:
                  const BorderSide(color: Color(0xFFD9C2A7), width: 1.5),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide:
                  const BorderSide(color: Color(0xFFD9C2A7), width: 1.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Color(0xFF8B6F47), width: 2),
            ),
          ),
        ),
      ],
    );
  }
}

// شاشة تسجيل الدخول (Login)
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F0E6),
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isMobile = constraints.maxWidth < 600;

          if (isMobile) {
            // 📱 عرض الموبايل
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    // const SizedBox(height: 40),

                    _buildForm(),
                  ],
                ),
              ),
            );
          } else {
            // 💻 عرض الويب
            return Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                  child: Image.network(
                    pattern,
                    fit: BoxFit.cover,
                    height: double.infinity,
                    repeat: ImageRepeat.repeatY,
                  ),
                ),
                Expanded(
                  child: Center(
                    child: SingleChildScrollView(
                      // ✅ التمرير لمنع overflow
                      padding: const EdgeInsets.all(32.0),
                      child: SizedBox(
                        width: 500,
                        child: _buildForm(),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }

  Widget _buildForm() {
    var logo =
        'https://res.cloudinary.com/dwaxkyuva/image/upload/v1762555873/ent_logo_mtiqjv.png';
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(logo, height: 80),
        const SizedBox(height: 30),
        _buildTextField(label: "اسم المستخدم"),
        const SizedBox(height: 20),
        _buildTextField(label: "كلمة السر"),
        const SizedBox(height: 20),
        _buildTextField(label: "رقم الهاتف"),
        const SizedBox(height: 20),
        _buildTextField(label: "المبلغ"),
        const SizedBox(height: 20),
        _buildTextField(label: "نوع المشروع"),
        const SizedBox(height: 20),
        _buildTextField(label: "المدينة"),
        const SizedBox(height: 20),
        _buildTextField(label: "الهدف الزمني"),
        const SizedBox(height: 40),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF2E4A3D),
            foregroundColor: Colors.white,
            minimumSize: const Size(double.infinity, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: const Text("تسجيل الدخول"),
        ),
      ],
    );
  }

  Widget _buildTextField({required String label}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontFamily: 'Cairo',
            fontSize: 16,
            color: Color(0xFF8B6F47),
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.right,
        ),
        const SizedBox(height: 8),
        TextField(
          textAlign: TextAlign.right,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide:
                  const BorderSide(color: Color(0xFFD9C2A7), width: 1.5),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide:
                  const BorderSide(color: Color(0xFFD9C2A7), width: 1.5),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Color(0xFF8B6F47), width: 2),
            ),
          ),
        ),
      ],
    );
  }
}
