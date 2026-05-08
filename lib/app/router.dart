import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../features/change_orders/screens/change_order_detail_screen.dart';
import '../features/change_orders/screens/change_order_editor_screen.dart';
import '../features/customers/screens/customer_detail_screen.dart';
import '../features/customers/screens/customer_picker_screen.dart';
import '../features/dashboard/dashboard_screen.dart';
import '../features/jobs/screens/create_job_screen.dart';
import '../features/jobs/screens/edit_job_screen.dart';
import '../features/jobs/screens/job_detail_screen.dart';
import '../features/photos/screens/photo_capture_screen.dart';
import '../features/photos/screens/photo_detail_screen.dart';
import '../features/photos/screens/photo_markup_screen.dart';
import '../features/reports/screens/report_builder_screen.dart';
import '../features/reports/screens/report_preview_screen.dart';
import '../features/settings/screens/company_profile_screen.dart';
import '../features/settings/screens/settings_screen.dart';
import '../features/signatures/screens/signature_capture_screen.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => const DashboardScreen()),
      GoRoute(
        path: '/jobs/new',
        builder: (context, state) => const CreateJobScreen(),
      ),
      GoRoute(
        path: '/jobs/:jobId',
        builder: (context, state) =>
            JobDetailScreen(jobId: state.pathParameters['jobId']!),
      ),
      GoRoute(
        path: '/jobs/:jobId/edit',
        builder: (context, state) =>
            EditJobScreen(jobId: state.pathParameters['jobId']!),
      ),
      GoRoute(
        path: '/jobs/:jobId/photos/new',
        builder: (context, state) =>
            PhotoCaptureScreen(jobId: state.pathParameters['jobId']!),
      ),
      GoRoute(
        path: '/jobs/:jobId/photos/:photoId',
        builder: (context, state) => PhotoDetailScreen(
          jobId: state.pathParameters['jobId']!,
          photoId: state.pathParameters['photoId']!,
        ),
      ),
      GoRoute(
        path: '/jobs/:jobId/photos/:photoId/markup',
        builder: (context, state) => PhotoMarkupScreen(
          jobId: state.pathParameters['jobId']!,
          photoId: state.pathParameters['photoId']!,
        ),
      ),
      GoRoute(
        path: '/jobs/:jobId/reports/new',
        builder: (context, state) =>
            ReportBuilderScreen(jobId: state.pathParameters['jobId']!),
      ),
      GoRoute(
        path: '/jobs/:jobId/reports/:reportId/preview',
        builder: (context, state) => ReportPreviewScreen(
          jobId: state.pathParameters['jobId']!,
          reportId: state.pathParameters['reportId']!,
        ),
      ),
      GoRoute(
        path: '/jobs/:jobId/change-orders/new',
        builder: (context, state) =>
            ChangeOrderEditorScreen(jobId: state.pathParameters['jobId']!),
      ),
      GoRoute(
        path: '/jobs/:jobId/change-orders/:changeOrderId',
        builder: (context, state) => ChangeOrderDetailScreen(
          jobId: state.pathParameters['jobId']!,
          changeOrderId: state.pathParameters['changeOrderId']!,
        ),
      ),
      GoRoute(
        path: '/jobs/:jobId/signatures/new',
        builder: (context, state) =>
            SignatureCaptureScreen(jobId: state.pathParameters['jobId']!),
      ),
      GoRoute(
        path: '/customers',
        builder: (context, state) => const CustomerPickerScreen(),
      ),
      GoRoute(
        path: '/customers/:customerId',
        builder: (context, state) => CustomerDetailScreen(
          customerId: state.pathParameters['customerId']!,
        ),
      ),
      GoRoute(
        path: '/settings',
        builder: (context, state) => const SettingsScreen(),
      ),
      GoRoute(
        path: '/settings/company',
        builder: (context, state) => const CompanyProfileScreen(),
      ),
    ],
  );
});
