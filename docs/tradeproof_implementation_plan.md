# TradeProof Implementation Plan

## Current Vertical Slice

The first build implements the path:

1. Open dashboard.
2. Create a job and optional reusable customer record.
3. Persist job/customer metadata locally in Drift.
4. Open job detail.
5. Capture or import a photo through `image_picker`.
6. Copy the photo file into app document storage.
7. Save photo metadata, category, caption, tags, and report visibility.
8. Generate a PDF report with the `pdf` package.
9. Save report history per job.
10. Preview and share the generated PDF.

## File-by-File Plan

`lib/main.dart`
: Bootstraps Flutter, Riverpod, and `TradeProofApp`.

`lib/app/tradeproof_app.dart`
: Configures `MaterialApp.router`, light/dark themes, and app identity.

`lib/app/router.dart`
: Defines the GoRouter route map for dashboard, jobs, photos, reports, settings, customers, signatures, and change orders.

`lib/app/theme/*`
: Owns colors, spacing, typography, and Material 3 theme setup for a practical contractor-grade UI.

`lib/core/models/*`
: Plain Dart entity models and enums for jobs, customers, photos, notes, materials, change orders, signatures, reports, and company profile.

`lib/core/database/database_service.dart`
: Drift schema and local SQLite connection under app documents at `/tradeproof/tradeproof.sqlite`.

`lib/core/database/database_providers.dart`
: Riverpod provider for the database lifecycle.

`lib/core/repositories/*`
: Repository interfaces and local implementations for jobs, customers, photos, reports, and company profile; future interfaces are present for notes, materials, change orders, and signatures.

`lib/core/services/*`
: File storage, photo import, PDF generation, sharing, permission checks, and future location service boundaries.

`lib/core/utils/*`
: ID, date, money, and result helpers.

`lib/features/dashboard/*`
: Dashboard and job summary widgets.

`lib/features/jobs/*`
: Create/edit/detail screens, job controller, form, status chip, summary card, and job action bar.

`lib/features/photos/*`
: Photo capture/import, detail editing, markup placeholder route, controller, grid, cards, categories, and tags.

`lib/features/reports/*`
: Report builder, PDF preview, report controller, report options, and template picker.

`lib/features/settings/*`
: Settings and company profile/logo foundation.

`lib/features/notes`, `materials`, `change_orders`, `signatures`
: Controllers, route placeholders, and initial UI entry points for the next phases.

`lib/shared/widgets/*`
: Reusable buttons, cards, inputs, empty states, section headers, bottom action bar, and confirmation dialogs.

## Final Folder Structure

```text
lib/
  main.dart
  app/
  core/
    database/
    models/
    repositories/
    services/
    utils/
  features/
    dashboard/
    jobs/
    customers/
    photos/
    notes/
    materials/
    change_orders/
    signatures/
    reports/
    settings/
  shared/widgets/
```

## Repository Interfaces

Implemented:

- `JobRepository`
- `CustomerRepository`
- `PhotoRepository`
- `ReportRepository`
- `CompanyProfileRepository`

Prepared:

- `NoteRepository`
- `MaterialRepository`
- `ChangeOrderRepository`
- `SignatureRepository`

## Service Interfaces

Implemented:

- `FileStorageService`
- `PhotoService`
- `PdfReportService`
- `ShareService`
- `PermissionService`
- `LocationService` placeholder

## Riverpod Setup

Provider groups:

- `databaseProvider`
- Repository providers in `repository_providers.dart`
- Service providers in `service_providers.dart`
- Feature stream/controller providers in each feature controller file

## GoRouter Map

```text
/
/jobs/new
/jobs/:jobId
/jobs/:jobId/edit
/jobs/:jobId/photos/new
/jobs/:jobId/photos/:photoId
/jobs/:jobId/photos/:photoId/markup
/jobs/:jobId/reports/new
/jobs/:jobId/reports/:reportId/preview
/jobs/:jobId/change-orders/new
/jobs/:jobId/change-orders/:changeOrderId
/jobs/:jobId/signatures/new
/customers
/customers/:customerId
/settings
/settings/company
```

## Screen-by-Screen UI Plan

Dashboard
: Fast recent-jobs list, active/completed/draft stats, and one-tap job creation.

Create/Edit Job
: Large field-ready form for job, trade, status, work order, technician, date, customer, and summary.

Job Detail
: Job/customer summary, primary add-photo and build-report actions, photo-first grid, notes placeholder, and report history.

Photo Capture
: Category-first capture/import flow using camera or gallery.

Photo Detail
: Full image preview, category chips, caption, tags, include-in-report toggle, delete confirmation.

Report Builder
: Report type and template selection with visible photo count.

Report Preview
: PDF preview through `printing`, share action through `share_plus`, missing-file empty state.

Settings/Company Profile
: Company identity, logo, license, technician, and disclaimer foundation.

## Manual Testing Checklist

- App launches on iOS and Android.
- Create, edit, archive, and delete job.
- Customer metadata saves and is reused by name.
- Add photo from camera.
- Add photo from gallery.
- Photo file is copied into app document storage.
- Photo metadata persists after app restart.
- Captions, tags, categories, and report visibility save.
- Missing photo files show graceful UI/PDF placeholders.
- Generate Full Job Report PDF.
- PDF includes job/customer/company details and categorized photos.
- PDF preview opens.
- Share sheet opens.
- Generated report appears in job history.
- Company profile and logo save.
- Light and dark mode remain legible.
- Permission denial shows an actionable error.

## Verified Checks

```text
flutter analyze
flutter test
flutter build apk --debug
flutter build ios --simulator
```

When regenerating Drift code in this environment, use:

```text
dart run build_runner build --force-jit
```

## Follow-Up Phase Plan

Phase 2
: Implement report-visible/internal notes and material items end to end.

Phase 3
: Implement signature capture persistence and PDF inclusion.

Phase 4
: Implement change orders with costs, attached photos, approval signatures, and dedicated report type.

Phase 5
: Add photo markup with saved marked-up copies under `/photos/marked_up`.

Phase 6
: Add premium PDF templates and a Pro entitlement abstraction without payments.

Phase 7
: Add export/import backup and prepare repository contracts for future cloud sync.
