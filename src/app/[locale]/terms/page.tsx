import { Metadata } from "next";

export const metadata: Metadata = {
    title: "Terms of Service",
};

export default function TermsPage() {
    return (
        <main className="min-h-screen py-20 px-4 md:px-6">
            <div className="max-w-3xl mx-auto">
                <h1 className="text-3xl font-bold text-white mb-8">Terms of Service</h1>

                <div className="prose prose-invert prose-pink max-w-none space-y-6 text-gray-300">
                    <p className="text-sm text-gray-400">Last updated: January 2026</p>

                    <section>
                        <h2 className="text-xl font-semibold text-white mt-8 mb-4">1. Acceptance of Terms</h2>
                        <p>
                            By accessing and using K-Dictation : Stantalk ("the Service"), you accept and agree to be bound by these Terms of Service.
                            If you do not agree to these terms, please do not use the Service.
                        </p>
                    </section>

                    <section>
                        <h2 className="text-xl font-semibold text-white mt-8 mb-4">2. Description of Service</h2>
                        <p>
                            K-Dictation is an educational platform that helps users learn the Korean language through
                            K-Pop and K-Drama content via dictation exercises.
                        </p>
                    </section>

                    <section>
                        <h2 className="text-xl font-semibold text-white mt-8 mb-4">3. User Accounts</h2>
                        <p>
                            You may be required to create an account to access certain features. You are responsible for:
                        </p>
                        <ul className="list-disc pl-6 space-y-2">
                            <li>Maintaining the confidentiality of your account</li>
                            <li>All activities that occur under your account</li>
                            <li>Notifying us of any unauthorized use</li>
                        </ul>
                    </section>

                    <section>
                        <h2 className="text-xl font-semibold text-white mt-8 mb-4">4. Acceptable Use</h2>
                        <p>You agree not to:</p>
                        <ul className="list-disc pl-6 space-y-2">
                            <li>Use the Service for any illegal purpose</li>
                            <li>Attempt to gain unauthorized access to our systems</li>
                            <li>Interfere with or disrupt the Service</li>
                            <li>Copy, modify, or distribute our content without permission</li>
                        </ul>
                    </section>

                    <section>
                        <h2 className="text-xl font-semibold text-white mt-8 mb-4">5. Intellectual Property</h2>
                        <p>
                            All content provided through the Service, including but not limited to text, graphics, logos,
                            and software, is the property of K-Dictation or its content suppliers and is protected by
                            intellectual property laws.
                        </p>
                    </section>

                    <section>
                        <h2 className="text-xl font-semibold text-white mt-8 mb-4">6. Disclaimer</h2>
                        <p>
                            The Service is provided "as is" without warranties of any kind. We do not guarantee that
                            the Service will be uninterrupted, secure, or error-free.
                        </p>
                    </section>

                    <section>
                        <h2 className="text-xl font-semibold text-white mt-8 mb-4">7. Contact</h2>
                        <p>
                            For questions about these Terms, please contact us at support@kdictation.com
                        </p>
                    </section>
                </div>
            </div>
        </main>
    );
}
