// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_service.dart';

// ignore_for_file: type=lint
class $JobsTable extends Jobs with TableInfo<$JobsTable, Job> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $JobsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _customerIdMeta = const VerificationMeta(
    'customerId',
  );
  @override
  late final GeneratedColumn<String> customerId = GeneratedColumn<String>(
    'customer_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _tradeTypeMeta = const VerificationMeta(
    'tradeType',
  );
  @override
  late final GeneratedColumn<String> tradeType = GeneratedColumn<String>(
    'trade_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _workOrderNumberMeta = const VerificationMeta(
    'workOrderNumber',
  );
  @override
  late final GeneratedColumn<String> workOrderNumber = GeneratedColumn<String>(
    'work_order_number',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _technicianNameMeta = const VerificationMeta(
    'technicianName',
  );
  @override
  late final GeneratedColumn<String> technicianName = GeneratedColumn<String>(
    'technician_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _jobDateMeta = const VerificationMeta(
    'jobDate',
  );
  @override
  late final GeneratedColumn<DateTime> jobDate = GeneratedColumn<DateTime>(
    'job_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _summaryMeta = const VerificationMeta(
    'summary',
  );
  @override
  late final GeneratedColumn<String> summary = GeneratedColumn<String>(
    'summary',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _archivedAtMeta = const VerificationMeta(
    'archivedAt',
  );
  @override
  late final GeneratedColumn<DateTime> archivedAt = GeneratedColumn<DateTime>(
    'archived_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    customerId,
    title,
    tradeType,
    workOrderNumber,
    technicianName,
    jobDate,
    status,
    summary,
    createdAt,
    updatedAt,
    archivedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'jobs';
  @override
  VerificationContext validateIntegrity(
    Insertable<Job> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('customer_id')) {
      context.handle(
        _customerIdMeta,
        customerId.isAcceptableOrUnknown(data['customer_id']!, _customerIdMeta),
      );
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('trade_type')) {
      context.handle(
        _tradeTypeMeta,
        tradeType.isAcceptableOrUnknown(data['trade_type']!, _tradeTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_tradeTypeMeta);
    }
    if (data.containsKey('work_order_number')) {
      context.handle(
        _workOrderNumberMeta,
        workOrderNumber.isAcceptableOrUnknown(
          data['work_order_number']!,
          _workOrderNumberMeta,
        ),
      );
    }
    if (data.containsKey('technician_name')) {
      context.handle(
        _technicianNameMeta,
        technicianName.isAcceptableOrUnknown(
          data['technician_name']!,
          _technicianNameMeta,
        ),
      );
    }
    if (data.containsKey('job_date')) {
      context.handle(
        _jobDateMeta,
        jobDate.isAcceptableOrUnknown(data['job_date']!, _jobDateMeta),
      );
    } else if (isInserting) {
      context.missing(_jobDateMeta);
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('summary')) {
      context.handle(
        _summaryMeta,
        summary.isAcceptableOrUnknown(data['summary']!, _summaryMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('archived_at')) {
      context.handle(
        _archivedAtMeta,
        archivedAt.isAcceptableOrUnknown(data['archived_at']!, _archivedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Job map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Job(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      customerId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}customer_id'],
      ),
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      tradeType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}trade_type'],
      )!,
      workOrderNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}work_order_number'],
      ),
      technicianName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}technician_name'],
      ),
      jobDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}job_date'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      summary: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}summary'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      archivedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}archived_at'],
      ),
    );
  }

  @override
  $JobsTable createAlias(String alias) {
    return $JobsTable(attachedDatabase, alias);
  }
}

class Job extends DataClass implements Insertable<Job> {
  final String id;
  final String? customerId;
  final String title;
  final String tradeType;
  final String? workOrderNumber;
  final String? technicianName;
  final DateTime jobDate;
  final String status;
  final String? summary;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? archivedAt;
  const Job({
    required this.id,
    this.customerId,
    required this.title,
    required this.tradeType,
    this.workOrderNumber,
    this.technicianName,
    required this.jobDate,
    required this.status,
    this.summary,
    required this.createdAt,
    required this.updatedAt,
    this.archivedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || customerId != null) {
      map['customer_id'] = Variable<String>(customerId);
    }
    map['title'] = Variable<String>(title);
    map['trade_type'] = Variable<String>(tradeType);
    if (!nullToAbsent || workOrderNumber != null) {
      map['work_order_number'] = Variable<String>(workOrderNumber);
    }
    if (!nullToAbsent || technicianName != null) {
      map['technician_name'] = Variable<String>(technicianName);
    }
    map['job_date'] = Variable<DateTime>(jobDate);
    map['status'] = Variable<String>(status);
    if (!nullToAbsent || summary != null) {
      map['summary'] = Variable<String>(summary);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    if (!nullToAbsent || archivedAt != null) {
      map['archived_at'] = Variable<DateTime>(archivedAt);
    }
    return map;
  }

  JobsCompanion toCompanion(bool nullToAbsent) {
    return JobsCompanion(
      id: Value(id),
      customerId: customerId == null && nullToAbsent
          ? const Value.absent()
          : Value(customerId),
      title: Value(title),
      tradeType: Value(tradeType),
      workOrderNumber: workOrderNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(workOrderNumber),
      technicianName: technicianName == null && nullToAbsent
          ? const Value.absent()
          : Value(technicianName),
      jobDate: Value(jobDate),
      status: Value(status),
      summary: summary == null && nullToAbsent
          ? const Value.absent()
          : Value(summary),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      archivedAt: archivedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(archivedAt),
    );
  }

  factory Job.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Job(
      id: serializer.fromJson<String>(json['id']),
      customerId: serializer.fromJson<String?>(json['customerId']),
      title: serializer.fromJson<String>(json['title']),
      tradeType: serializer.fromJson<String>(json['tradeType']),
      workOrderNumber: serializer.fromJson<String?>(json['workOrderNumber']),
      technicianName: serializer.fromJson<String?>(json['technicianName']),
      jobDate: serializer.fromJson<DateTime>(json['jobDate']),
      status: serializer.fromJson<String>(json['status']),
      summary: serializer.fromJson<String?>(json['summary']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      archivedAt: serializer.fromJson<DateTime?>(json['archivedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'customerId': serializer.toJson<String?>(customerId),
      'title': serializer.toJson<String>(title),
      'tradeType': serializer.toJson<String>(tradeType),
      'workOrderNumber': serializer.toJson<String?>(workOrderNumber),
      'technicianName': serializer.toJson<String?>(technicianName),
      'jobDate': serializer.toJson<DateTime>(jobDate),
      'status': serializer.toJson<String>(status),
      'summary': serializer.toJson<String?>(summary),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'archivedAt': serializer.toJson<DateTime?>(archivedAt),
    };
  }

  Job copyWith({
    String? id,
    Value<String?> customerId = const Value.absent(),
    String? title,
    String? tradeType,
    Value<String?> workOrderNumber = const Value.absent(),
    Value<String?> technicianName = const Value.absent(),
    DateTime? jobDate,
    String? status,
    Value<String?> summary = const Value.absent(),
    DateTime? createdAt,
    DateTime? updatedAt,
    Value<DateTime?> archivedAt = const Value.absent(),
  }) => Job(
    id: id ?? this.id,
    customerId: customerId.present ? customerId.value : this.customerId,
    title: title ?? this.title,
    tradeType: tradeType ?? this.tradeType,
    workOrderNumber: workOrderNumber.present
        ? workOrderNumber.value
        : this.workOrderNumber,
    technicianName: technicianName.present
        ? technicianName.value
        : this.technicianName,
    jobDate: jobDate ?? this.jobDate,
    status: status ?? this.status,
    summary: summary.present ? summary.value : this.summary,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    archivedAt: archivedAt.present ? archivedAt.value : this.archivedAt,
  );
  Job copyWithCompanion(JobsCompanion data) {
    return Job(
      id: data.id.present ? data.id.value : this.id,
      customerId: data.customerId.present
          ? data.customerId.value
          : this.customerId,
      title: data.title.present ? data.title.value : this.title,
      tradeType: data.tradeType.present ? data.tradeType.value : this.tradeType,
      workOrderNumber: data.workOrderNumber.present
          ? data.workOrderNumber.value
          : this.workOrderNumber,
      technicianName: data.technicianName.present
          ? data.technicianName.value
          : this.technicianName,
      jobDate: data.jobDate.present ? data.jobDate.value : this.jobDate,
      status: data.status.present ? data.status.value : this.status,
      summary: data.summary.present ? data.summary.value : this.summary,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      archivedAt: data.archivedAt.present
          ? data.archivedAt.value
          : this.archivedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Job(')
          ..write('id: $id, ')
          ..write('customerId: $customerId, ')
          ..write('title: $title, ')
          ..write('tradeType: $tradeType, ')
          ..write('workOrderNumber: $workOrderNumber, ')
          ..write('technicianName: $technicianName, ')
          ..write('jobDate: $jobDate, ')
          ..write('status: $status, ')
          ..write('summary: $summary, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('archivedAt: $archivedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    customerId,
    title,
    tradeType,
    workOrderNumber,
    technicianName,
    jobDate,
    status,
    summary,
    createdAt,
    updatedAt,
    archivedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Job &&
          other.id == this.id &&
          other.customerId == this.customerId &&
          other.title == this.title &&
          other.tradeType == this.tradeType &&
          other.workOrderNumber == this.workOrderNumber &&
          other.technicianName == this.technicianName &&
          other.jobDate == this.jobDate &&
          other.status == this.status &&
          other.summary == this.summary &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.archivedAt == this.archivedAt);
}

class JobsCompanion extends UpdateCompanion<Job> {
  final Value<String> id;
  final Value<String?> customerId;
  final Value<String> title;
  final Value<String> tradeType;
  final Value<String?> workOrderNumber;
  final Value<String?> technicianName;
  final Value<DateTime> jobDate;
  final Value<String> status;
  final Value<String?> summary;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime?> archivedAt;
  final Value<int> rowid;
  const JobsCompanion({
    this.id = const Value.absent(),
    this.customerId = const Value.absent(),
    this.title = const Value.absent(),
    this.tradeType = const Value.absent(),
    this.workOrderNumber = const Value.absent(),
    this.technicianName = const Value.absent(),
    this.jobDate = const Value.absent(),
    this.status = const Value.absent(),
    this.summary = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.archivedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  JobsCompanion.insert({
    required String id,
    this.customerId = const Value.absent(),
    required String title,
    required String tradeType,
    this.workOrderNumber = const Value.absent(),
    this.technicianName = const Value.absent(),
    required DateTime jobDate,
    required String status,
    this.summary = const Value.absent(),
    required DateTime createdAt,
    required DateTime updatedAt,
    this.archivedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       title = Value(title),
       tradeType = Value(tradeType),
       jobDate = Value(jobDate),
       status = Value(status),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<Job> custom({
    Expression<String>? id,
    Expression<String>? customerId,
    Expression<String>? title,
    Expression<String>? tradeType,
    Expression<String>? workOrderNumber,
    Expression<String>? technicianName,
    Expression<DateTime>? jobDate,
    Expression<String>? status,
    Expression<String>? summary,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? archivedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (customerId != null) 'customer_id': customerId,
      if (title != null) 'title': title,
      if (tradeType != null) 'trade_type': tradeType,
      if (workOrderNumber != null) 'work_order_number': workOrderNumber,
      if (technicianName != null) 'technician_name': technicianName,
      if (jobDate != null) 'job_date': jobDate,
      if (status != null) 'status': status,
      if (summary != null) 'summary': summary,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (archivedAt != null) 'archived_at': archivedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  JobsCompanion copyWith({
    Value<String>? id,
    Value<String?>? customerId,
    Value<String>? title,
    Value<String>? tradeType,
    Value<String?>? workOrderNumber,
    Value<String?>? technicianName,
    Value<DateTime>? jobDate,
    Value<String>? status,
    Value<String?>? summary,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<DateTime?>? archivedAt,
    Value<int>? rowid,
  }) {
    return JobsCompanion(
      id: id ?? this.id,
      customerId: customerId ?? this.customerId,
      title: title ?? this.title,
      tradeType: tradeType ?? this.tradeType,
      workOrderNumber: workOrderNumber ?? this.workOrderNumber,
      technicianName: technicianName ?? this.technicianName,
      jobDate: jobDate ?? this.jobDate,
      status: status ?? this.status,
      summary: summary ?? this.summary,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      archivedAt: archivedAt ?? this.archivedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (customerId.present) {
      map['customer_id'] = Variable<String>(customerId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (tradeType.present) {
      map['trade_type'] = Variable<String>(tradeType.value);
    }
    if (workOrderNumber.present) {
      map['work_order_number'] = Variable<String>(workOrderNumber.value);
    }
    if (technicianName.present) {
      map['technician_name'] = Variable<String>(technicianName.value);
    }
    if (jobDate.present) {
      map['job_date'] = Variable<DateTime>(jobDate.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (summary.present) {
      map['summary'] = Variable<String>(summary.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (archivedAt.present) {
      map['archived_at'] = Variable<DateTime>(archivedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('JobsCompanion(')
          ..write('id: $id, ')
          ..write('customerId: $customerId, ')
          ..write('title: $title, ')
          ..write('tradeType: $tradeType, ')
          ..write('workOrderNumber: $workOrderNumber, ')
          ..write('technicianName: $technicianName, ')
          ..write('jobDate: $jobDate, ')
          ..write('status: $status, ')
          ..write('summary: $summary, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('archivedAt: $archivedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CustomersTable extends Customers
    with TableInfo<$CustomersTable, Customer> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CustomersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
    'phone',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
    'email',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _addressMeta = const VerificationMeta(
    'address',
  );
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
    'address',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    phone,
    email,
    address,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'customers';
  @override
  VerificationContext validateIntegrity(
    Insertable<Customer> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
        _phoneMeta,
        phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta),
      );
    }
    if (data.containsKey('email')) {
      context.handle(
        _emailMeta,
        email.isAcceptableOrUnknown(data['email']!, _emailMeta),
      );
    }
    if (data.containsKey('address')) {
      context.handle(
        _addressMeta,
        address.isAcceptableOrUnknown(data['address']!, _addressMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Customer map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Customer(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      phone: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phone'],
      ),
      email: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}email'],
      ),
      address: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}address'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $CustomersTable createAlias(String alias) {
    return $CustomersTable(attachedDatabase, alias);
  }
}

class Customer extends DataClass implements Insertable<Customer> {
  final String id;
  final String name;
  final String? phone;
  final String? email;
  final String? address;
  final DateTime createdAt;
  final DateTime updatedAt;
  const Customer({
    required this.id,
    required this.name,
    this.phone,
    this.email,
    this.address,
    required this.createdAt,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || phone != null) {
      map['phone'] = Variable<String>(phone);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || address != null) {
      map['address'] = Variable<String>(address);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  CustomersCompanion toCompanion(bool nullToAbsent) {
    return CustomersCompanion(
      id: Value(id),
      name: Value(name),
      phone: phone == null && nullToAbsent
          ? const Value.absent()
          : Value(phone),
      email: email == null && nullToAbsent
          ? const Value.absent()
          : Value(email),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory Customer.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Customer(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      phone: serializer.fromJson<String?>(json['phone']),
      email: serializer.fromJson<String?>(json['email']),
      address: serializer.fromJson<String?>(json['address']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'phone': serializer.toJson<String?>(phone),
      'email': serializer.toJson<String?>(email),
      'address': serializer.toJson<String?>(address),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  Customer copyWith({
    String? id,
    String? name,
    Value<String?> phone = const Value.absent(),
    Value<String?> email = const Value.absent(),
    Value<String?> address = const Value.absent(),
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => Customer(
    id: id ?? this.id,
    name: name ?? this.name,
    phone: phone.present ? phone.value : this.phone,
    email: email.present ? email.value : this.email,
    address: address.present ? address.value : this.address,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  Customer copyWithCompanion(CustomersCompanion data) {
    return Customer(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      phone: data.phone.present ? data.phone.value : this.phone,
      email: data.email.present ? data.email.value : this.email,
      address: data.address.present ? data.address.value : this.address,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Customer(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('phone: $phone, ')
          ..write('email: $email, ')
          ..write('address: $address, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, phone, email, address, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Customer &&
          other.id == this.id &&
          other.name == this.name &&
          other.phone == this.phone &&
          other.email == this.email &&
          other.address == this.address &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class CustomersCompanion extends UpdateCompanion<Customer> {
  final Value<String> id;
  final Value<String> name;
  final Value<String?> phone;
  final Value<String?> email;
  final Value<String?> address;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const CustomersCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.phone = const Value.absent(),
    this.email = const Value.absent(),
    this.address = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CustomersCompanion.insert({
    required String id,
    required String name,
    this.phone = const Value.absent(),
    this.email = const Value.absent(),
    this.address = const Value.absent(),
    required DateTime createdAt,
    required DateTime updatedAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<Customer> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? phone,
    Expression<String>? email,
    Expression<String>? address,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (phone != null) 'phone': phone,
      if (email != null) 'email': email,
      if (address != null) 'address': address,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CustomersCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<String?>? phone,
    Value<String?>? email,
    Value<String?>? address,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<int>? rowid,
  }) {
    return CustomersCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      address: address ?? this.address,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomersCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('phone: $phone, ')
          ..write('email: $email, ')
          ..write('address: $address, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $JobPhotosTable extends JobPhotos
    with TableInfo<$JobPhotosTable, JobPhoto> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $JobPhotosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _jobIdMeta = const VerificationMeta('jobId');
  @override
  late final GeneratedColumn<String> jobId = GeneratedColumn<String>(
    'job_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES jobs (id)',
    ),
  );
  static const VerificationMeta _originalPathMeta = const VerificationMeta(
    'originalPath',
  );
  @override
  late final GeneratedColumn<String> originalPath = GeneratedColumn<String>(
    'original_path',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _markedUpPathMeta = const VerificationMeta(
    'markedUpPath',
  );
  @override
  late final GeneratedColumn<String> markedUpPath = GeneratedColumn<String>(
    'marked_up_path',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _categoryMeta = const VerificationMeta(
    'category',
  );
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
    'category',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _captionMeta = const VerificationMeta(
    'caption',
  );
  @override
  late final GeneratedColumn<String> caption = GeneratedColumn<String>(
    'caption',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _tagsJsonMeta = const VerificationMeta(
    'tagsJson',
  );
  @override
  late final GeneratedColumn<String> tagsJson = GeneratedColumn<String>(
    'tags_json',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('[]'),
  );
  static const VerificationMeta _capturedAtMeta = const VerificationMeta(
    'capturedAt',
  );
  @override
  late final GeneratedColumn<DateTime> capturedAt = GeneratedColumn<DateTime>(
    'captured_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _includeInReportMeta = const VerificationMeta(
    'includeInReport',
  );
  @override
  late final GeneratedColumn<bool> includeInReport = GeneratedColumn<bool>(
    'include_in_report',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("include_in_report" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    jobId,
    originalPath,
    markedUpPath,
    category,
    caption,
    tagsJson,
    capturedAt,
    includeInReport,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'job_photos';
  @override
  VerificationContext validateIntegrity(
    Insertable<JobPhoto> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('job_id')) {
      context.handle(
        _jobIdMeta,
        jobId.isAcceptableOrUnknown(data['job_id']!, _jobIdMeta),
      );
    } else if (isInserting) {
      context.missing(_jobIdMeta);
    }
    if (data.containsKey('original_path')) {
      context.handle(
        _originalPathMeta,
        originalPath.isAcceptableOrUnknown(
          data['original_path']!,
          _originalPathMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_originalPathMeta);
    }
    if (data.containsKey('marked_up_path')) {
      context.handle(
        _markedUpPathMeta,
        markedUpPath.isAcceptableOrUnknown(
          data['marked_up_path']!,
          _markedUpPathMeta,
        ),
      );
    }
    if (data.containsKey('category')) {
      context.handle(
        _categoryMeta,
        category.isAcceptableOrUnknown(data['category']!, _categoryMeta),
      );
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('caption')) {
      context.handle(
        _captionMeta,
        caption.isAcceptableOrUnknown(data['caption']!, _captionMeta),
      );
    }
    if (data.containsKey('tags_json')) {
      context.handle(
        _tagsJsonMeta,
        tagsJson.isAcceptableOrUnknown(data['tags_json']!, _tagsJsonMeta),
      );
    }
    if (data.containsKey('captured_at')) {
      context.handle(
        _capturedAtMeta,
        capturedAt.isAcceptableOrUnknown(data['captured_at']!, _capturedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_capturedAtMeta);
    }
    if (data.containsKey('include_in_report')) {
      context.handle(
        _includeInReportMeta,
        includeInReport.isAcceptableOrUnknown(
          data['include_in_report']!,
          _includeInReportMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  JobPhoto map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return JobPhoto(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      jobId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}job_id'],
      )!,
      originalPath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}original_path'],
      )!,
      markedUpPath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}marked_up_path'],
      ),
      category: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}category'],
      )!,
      caption: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}caption'],
      ),
      tagsJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tags_json'],
      )!,
      capturedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}captured_at'],
      )!,
      includeInReport: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}include_in_report'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $JobPhotosTable createAlias(String alias) {
    return $JobPhotosTable(attachedDatabase, alias);
  }
}

class JobPhoto extends DataClass implements Insertable<JobPhoto> {
  final String id;
  final String jobId;
  final String originalPath;
  final String? markedUpPath;
  final String category;
  final String? caption;
  final String tagsJson;
  final DateTime capturedAt;
  final bool includeInReport;
  final DateTime createdAt;
  final DateTime updatedAt;
  const JobPhoto({
    required this.id,
    required this.jobId,
    required this.originalPath,
    this.markedUpPath,
    required this.category,
    this.caption,
    required this.tagsJson,
    required this.capturedAt,
    required this.includeInReport,
    required this.createdAt,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['job_id'] = Variable<String>(jobId);
    map['original_path'] = Variable<String>(originalPath);
    if (!nullToAbsent || markedUpPath != null) {
      map['marked_up_path'] = Variable<String>(markedUpPath);
    }
    map['category'] = Variable<String>(category);
    if (!nullToAbsent || caption != null) {
      map['caption'] = Variable<String>(caption);
    }
    map['tags_json'] = Variable<String>(tagsJson);
    map['captured_at'] = Variable<DateTime>(capturedAt);
    map['include_in_report'] = Variable<bool>(includeInReport);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  JobPhotosCompanion toCompanion(bool nullToAbsent) {
    return JobPhotosCompanion(
      id: Value(id),
      jobId: Value(jobId),
      originalPath: Value(originalPath),
      markedUpPath: markedUpPath == null && nullToAbsent
          ? const Value.absent()
          : Value(markedUpPath),
      category: Value(category),
      caption: caption == null && nullToAbsent
          ? const Value.absent()
          : Value(caption),
      tagsJson: Value(tagsJson),
      capturedAt: Value(capturedAt),
      includeInReport: Value(includeInReport),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory JobPhoto.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return JobPhoto(
      id: serializer.fromJson<String>(json['id']),
      jobId: serializer.fromJson<String>(json['jobId']),
      originalPath: serializer.fromJson<String>(json['originalPath']),
      markedUpPath: serializer.fromJson<String?>(json['markedUpPath']),
      category: serializer.fromJson<String>(json['category']),
      caption: serializer.fromJson<String?>(json['caption']),
      tagsJson: serializer.fromJson<String>(json['tagsJson']),
      capturedAt: serializer.fromJson<DateTime>(json['capturedAt']),
      includeInReport: serializer.fromJson<bool>(json['includeInReport']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'jobId': serializer.toJson<String>(jobId),
      'originalPath': serializer.toJson<String>(originalPath),
      'markedUpPath': serializer.toJson<String?>(markedUpPath),
      'category': serializer.toJson<String>(category),
      'caption': serializer.toJson<String?>(caption),
      'tagsJson': serializer.toJson<String>(tagsJson),
      'capturedAt': serializer.toJson<DateTime>(capturedAt),
      'includeInReport': serializer.toJson<bool>(includeInReport),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  JobPhoto copyWith({
    String? id,
    String? jobId,
    String? originalPath,
    Value<String?> markedUpPath = const Value.absent(),
    String? category,
    Value<String?> caption = const Value.absent(),
    String? tagsJson,
    DateTime? capturedAt,
    bool? includeInReport,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => JobPhoto(
    id: id ?? this.id,
    jobId: jobId ?? this.jobId,
    originalPath: originalPath ?? this.originalPath,
    markedUpPath: markedUpPath.present ? markedUpPath.value : this.markedUpPath,
    category: category ?? this.category,
    caption: caption.present ? caption.value : this.caption,
    tagsJson: tagsJson ?? this.tagsJson,
    capturedAt: capturedAt ?? this.capturedAt,
    includeInReport: includeInReport ?? this.includeInReport,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  JobPhoto copyWithCompanion(JobPhotosCompanion data) {
    return JobPhoto(
      id: data.id.present ? data.id.value : this.id,
      jobId: data.jobId.present ? data.jobId.value : this.jobId,
      originalPath: data.originalPath.present
          ? data.originalPath.value
          : this.originalPath,
      markedUpPath: data.markedUpPath.present
          ? data.markedUpPath.value
          : this.markedUpPath,
      category: data.category.present ? data.category.value : this.category,
      caption: data.caption.present ? data.caption.value : this.caption,
      tagsJson: data.tagsJson.present ? data.tagsJson.value : this.tagsJson,
      capturedAt: data.capturedAt.present
          ? data.capturedAt.value
          : this.capturedAt,
      includeInReport: data.includeInReport.present
          ? data.includeInReport.value
          : this.includeInReport,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('JobPhoto(')
          ..write('id: $id, ')
          ..write('jobId: $jobId, ')
          ..write('originalPath: $originalPath, ')
          ..write('markedUpPath: $markedUpPath, ')
          ..write('category: $category, ')
          ..write('caption: $caption, ')
          ..write('tagsJson: $tagsJson, ')
          ..write('capturedAt: $capturedAt, ')
          ..write('includeInReport: $includeInReport, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    jobId,
    originalPath,
    markedUpPath,
    category,
    caption,
    tagsJson,
    capturedAt,
    includeInReport,
    createdAt,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is JobPhoto &&
          other.id == this.id &&
          other.jobId == this.jobId &&
          other.originalPath == this.originalPath &&
          other.markedUpPath == this.markedUpPath &&
          other.category == this.category &&
          other.caption == this.caption &&
          other.tagsJson == this.tagsJson &&
          other.capturedAt == this.capturedAt &&
          other.includeInReport == this.includeInReport &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class JobPhotosCompanion extends UpdateCompanion<JobPhoto> {
  final Value<String> id;
  final Value<String> jobId;
  final Value<String> originalPath;
  final Value<String?> markedUpPath;
  final Value<String> category;
  final Value<String?> caption;
  final Value<String> tagsJson;
  final Value<DateTime> capturedAt;
  final Value<bool> includeInReport;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const JobPhotosCompanion({
    this.id = const Value.absent(),
    this.jobId = const Value.absent(),
    this.originalPath = const Value.absent(),
    this.markedUpPath = const Value.absent(),
    this.category = const Value.absent(),
    this.caption = const Value.absent(),
    this.tagsJson = const Value.absent(),
    this.capturedAt = const Value.absent(),
    this.includeInReport = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  JobPhotosCompanion.insert({
    required String id,
    required String jobId,
    required String originalPath,
    this.markedUpPath = const Value.absent(),
    required String category,
    this.caption = const Value.absent(),
    this.tagsJson = const Value.absent(),
    required DateTime capturedAt,
    this.includeInReport = const Value.absent(),
    required DateTime createdAt,
    required DateTime updatedAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       jobId = Value(jobId),
       originalPath = Value(originalPath),
       category = Value(category),
       capturedAt = Value(capturedAt),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<JobPhoto> custom({
    Expression<String>? id,
    Expression<String>? jobId,
    Expression<String>? originalPath,
    Expression<String>? markedUpPath,
    Expression<String>? category,
    Expression<String>? caption,
    Expression<String>? tagsJson,
    Expression<DateTime>? capturedAt,
    Expression<bool>? includeInReport,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (jobId != null) 'job_id': jobId,
      if (originalPath != null) 'original_path': originalPath,
      if (markedUpPath != null) 'marked_up_path': markedUpPath,
      if (category != null) 'category': category,
      if (caption != null) 'caption': caption,
      if (tagsJson != null) 'tags_json': tagsJson,
      if (capturedAt != null) 'captured_at': capturedAt,
      if (includeInReport != null) 'include_in_report': includeInReport,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  JobPhotosCompanion copyWith({
    Value<String>? id,
    Value<String>? jobId,
    Value<String>? originalPath,
    Value<String?>? markedUpPath,
    Value<String>? category,
    Value<String?>? caption,
    Value<String>? tagsJson,
    Value<DateTime>? capturedAt,
    Value<bool>? includeInReport,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<int>? rowid,
  }) {
    return JobPhotosCompanion(
      id: id ?? this.id,
      jobId: jobId ?? this.jobId,
      originalPath: originalPath ?? this.originalPath,
      markedUpPath: markedUpPath ?? this.markedUpPath,
      category: category ?? this.category,
      caption: caption ?? this.caption,
      tagsJson: tagsJson ?? this.tagsJson,
      capturedAt: capturedAt ?? this.capturedAt,
      includeInReport: includeInReport ?? this.includeInReport,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (jobId.present) {
      map['job_id'] = Variable<String>(jobId.value);
    }
    if (originalPath.present) {
      map['original_path'] = Variable<String>(originalPath.value);
    }
    if (markedUpPath.present) {
      map['marked_up_path'] = Variable<String>(markedUpPath.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (caption.present) {
      map['caption'] = Variable<String>(caption.value);
    }
    if (tagsJson.present) {
      map['tags_json'] = Variable<String>(tagsJson.value);
    }
    if (capturedAt.present) {
      map['captured_at'] = Variable<DateTime>(capturedAt.value);
    }
    if (includeInReport.present) {
      map['include_in_report'] = Variable<bool>(includeInReport.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('JobPhotosCompanion(')
          ..write('id: $id, ')
          ..write('jobId: $jobId, ')
          ..write('originalPath: $originalPath, ')
          ..write('markedUpPath: $markedUpPath, ')
          ..write('category: $category, ')
          ..write('caption: $caption, ')
          ..write('tagsJson: $tagsJson, ')
          ..write('capturedAt: $capturedAt, ')
          ..write('includeInReport: $includeInReport, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $JobNotesTable extends JobNotes with TableInfo<$JobNotesTable, JobNote> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $JobNotesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _jobIdMeta = const VerificationMeta('jobId');
  @override
  late final GeneratedColumn<String> jobId = GeneratedColumn<String>(
    'job_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES jobs (id)',
    ),
  );
  static const VerificationMeta _bodyMeta = const VerificationMeta('body');
  @override
  late final GeneratedColumn<String> body = GeneratedColumn<String>(
    'body',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _visibleOnReportMeta = const VerificationMeta(
    'visibleOnReport',
  );
  @override
  late final GeneratedColumn<bool> visibleOnReport = GeneratedColumn<bool>(
    'visible_on_report',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("visible_on_report" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    jobId,
    body,
    visibleOnReport,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'job_notes';
  @override
  VerificationContext validateIntegrity(
    Insertable<JobNote> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('job_id')) {
      context.handle(
        _jobIdMeta,
        jobId.isAcceptableOrUnknown(data['job_id']!, _jobIdMeta),
      );
    } else if (isInserting) {
      context.missing(_jobIdMeta);
    }
    if (data.containsKey('body')) {
      context.handle(
        _bodyMeta,
        body.isAcceptableOrUnknown(data['body']!, _bodyMeta),
      );
    } else if (isInserting) {
      context.missing(_bodyMeta);
    }
    if (data.containsKey('visible_on_report')) {
      context.handle(
        _visibleOnReportMeta,
        visibleOnReport.isAcceptableOrUnknown(
          data['visible_on_report']!,
          _visibleOnReportMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  JobNote map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return JobNote(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      jobId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}job_id'],
      )!,
      body: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}body'],
      )!,
      visibleOnReport: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}visible_on_report'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $JobNotesTable createAlias(String alias) {
    return $JobNotesTable(attachedDatabase, alias);
  }
}

class JobNote extends DataClass implements Insertable<JobNote> {
  final String id;
  final String jobId;
  final String body;
  final bool visibleOnReport;
  final DateTime createdAt;
  final DateTime updatedAt;
  const JobNote({
    required this.id,
    required this.jobId,
    required this.body,
    required this.visibleOnReport,
    required this.createdAt,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['job_id'] = Variable<String>(jobId);
    map['body'] = Variable<String>(body);
    map['visible_on_report'] = Variable<bool>(visibleOnReport);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  JobNotesCompanion toCompanion(bool nullToAbsent) {
    return JobNotesCompanion(
      id: Value(id),
      jobId: Value(jobId),
      body: Value(body),
      visibleOnReport: Value(visibleOnReport),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory JobNote.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return JobNote(
      id: serializer.fromJson<String>(json['id']),
      jobId: serializer.fromJson<String>(json['jobId']),
      body: serializer.fromJson<String>(json['body']),
      visibleOnReport: serializer.fromJson<bool>(json['visibleOnReport']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'jobId': serializer.toJson<String>(jobId),
      'body': serializer.toJson<String>(body),
      'visibleOnReport': serializer.toJson<bool>(visibleOnReport),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  JobNote copyWith({
    String? id,
    String? jobId,
    String? body,
    bool? visibleOnReport,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => JobNote(
    id: id ?? this.id,
    jobId: jobId ?? this.jobId,
    body: body ?? this.body,
    visibleOnReport: visibleOnReport ?? this.visibleOnReport,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  JobNote copyWithCompanion(JobNotesCompanion data) {
    return JobNote(
      id: data.id.present ? data.id.value : this.id,
      jobId: data.jobId.present ? data.jobId.value : this.jobId,
      body: data.body.present ? data.body.value : this.body,
      visibleOnReport: data.visibleOnReport.present
          ? data.visibleOnReport.value
          : this.visibleOnReport,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('JobNote(')
          ..write('id: $id, ')
          ..write('jobId: $jobId, ')
          ..write('body: $body, ')
          ..write('visibleOnReport: $visibleOnReport, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, jobId, body, visibleOnReport, createdAt, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is JobNote &&
          other.id == this.id &&
          other.jobId == this.jobId &&
          other.body == this.body &&
          other.visibleOnReport == this.visibleOnReport &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class JobNotesCompanion extends UpdateCompanion<JobNote> {
  final Value<String> id;
  final Value<String> jobId;
  final Value<String> body;
  final Value<bool> visibleOnReport;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const JobNotesCompanion({
    this.id = const Value.absent(),
    this.jobId = const Value.absent(),
    this.body = const Value.absent(),
    this.visibleOnReport = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  JobNotesCompanion.insert({
    required String id,
    required String jobId,
    required String body,
    this.visibleOnReport = const Value.absent(),
    required DateTime createdAt,
    required DateTime updatedAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       jobId = Value(jobId),
       body = Value(body),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<JobNote> custom({
    Expression<String>? id,
    Expression<String>? jobId,
    Expression<String>? body,
    Expression<bool>? visibleOnReport,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (jobId != null) 'job_id': jobId,
      if (body != null) 'body': body,
      if (visibleOnReport != null) 'visible_on_report': visibleOnReport,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  JobNotesCompanion copyWith({
    Value<String>? id,
    Value<String>? jobId,
    Value<String>? body,
    Value<bool>? visibleOnReport,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<int>? rowid,
  }) {
    return JobNotesCompanion(
      id: id ?? this.id,
      jobId: jobId ?? this.jobId,
      body: body ?? this.body,
      visibleOnReport: visibleOnReport ?? this.visibleOnReport,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (jobId.present) {
      map['job_id'] = Variable<String>(jobId.value);
    }
    if (body.present) {
      map['body'] = Variable<String>(body.value);
    }
    if (visibleOnReport.present) {
      map['visible_on_report'] = Variable<bool>(visibleOnReport.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('JobNotesCompanion(')
          ..write('id: $id, ')
          ..write('jobId: $jobId, ')
          ..write('body: $body, ')
          ..write('visibleOnReport: $visibleOnReport, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $MaterialItemsTable extends MaterialItems
    with TableInfo<$MaterialItemsTable, MaterialItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MaterialItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _jobIdMeta = const VerificationMeta('jobId');
  @override
  late final GeneratedColumn<String> jobId = GeneratedColumn<String>(
    'job_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES jobs (id)',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _quantityMeta = const VerificationMeta(
    'quantity',
  );
  @override
  late final GeneratedColumn<double> quantity = GeneratedColumn<double>(
    'quantity',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _unitMeta = const VerificationMeta('unit');
  @override
  late final GeneratedColumn<String> unit = GeneratedColumn<String>(
    'unit',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _unitCostMeta = const VerificationMeta(
    'unitCost',
  );
  @override
  late final GeneratedColumn<double> unitCost = GeneratedColumn<double>(
    'unit_cost',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _includeOnReportMeta = const VerificationMeta(
    'includeOnReport',
  );
  @override
  late final GeneratedColumn<bool> includeOnReport = GeneratedColumn<bool>(
    'include_on_report',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("include_on_report" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    jobId,
    name,
    quantity,
    unit,
    unitCost,
    includeOnReport,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'material_items';
  @override
  VerificationContext validateIntegrity(
    Insertable<MaterialItem> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('job_id')) {
      context.handle(
        _jobIdMeta,
        jobId.isAcceptableOrUnknown(data['job_id']!, _jobIdMeta),
      );
    } else if (isInserting) {
      context.missing(_jobIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(
        _quantityMeta,
        quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta),
      );
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('unit')) {
      context.handle(
        _unitMeta,
        unit.isAcceptableOrUnknown(data['unit']!, _unitMeta),
      );
    } else if (isInserting) {
      context.missing(_unitMeta);
    }
    if (data.containsKey('unit_cost')) {
      context.handle(
        _unitCostMeta,
        unitCost.isAcceptableOrUnknown(data['unit_cost']!, _unitCostMeta),
      );
    }
    if (data.containsKey('include_on_report')) {
      context.handle(
        _includeOnReportMeta,
        includeOnReport.isAcceptableOrUnknown(
          data['include_on_report']!,
          _includeOnReportMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MaterialItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MaterialItem(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      jobId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}job_id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      quantity: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}quantity'],
      )!,
      unit: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}unit'],
      )!,
      unitCost: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}unit_cost'],
      ),
      includeOnReport: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}include_on_report'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $MaterialItemsTable createAlias(String alias) {
    return $MaterialItemsTable(attachedDatabase, alias);
  }
}

class MaterialItem extends DataClass implements Insertable<MaterialItem> {
  final String id;
  final String jobId;
  final String name;
  final double quantity;
  final String unit;
  final double? unitCost;
  final bool includeOnReport;
  final DateTime createdAt;
  final DateTime updatedAt;
  const MaterialItem({
    required this.id,
    required this.jobId,
    required this.name,
    required this.quantity,
    required this.unit,
    this.unitCost,
    required this.includeOnReport,
    required this.createdAt,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['job_id'] = Variable<String>(jobId);
    map['name'] = Variable<String>(name);
    map['quantity'] = Variable<double>(quantity);
    map['unit'] = Variable<String>(unit);
    if (!nullToAbsent || unitCost != null) {
      map['unit_cost'] = Variable<double>(unitCost);
    }
    map['include_on_report'] = Variable<bool>(includeOnReport);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  MaterialItemsCompanion toCompanion(bool nullToAbsent) {
    return MaterialItemsCompanion(
      id: Value(id),
      jobId: Value(jobId),
      name: Value(name),
      quantity: Value(quantity),
      unit: Value(unit),
      unitCost: unitCost == null && nullToAbsent
          ? const Value.absent()
          : Value(unitCost),
      includeOnReport: Value(includeOnReport),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory MaterialItem.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MaterialItem(
      id: serializer.fromJson<String>(json['id']),
      jobId: serializer.fromJson<String>(json['jobId']),
      name: serializer.fromJson<String>(json['name']),
      quantity: serializer.fromJson<double>(json['quantity']),
      unit: serializer.fromJson<String>(json['unit']),
      unitCost: serializer.fromJson<double?>(json['unitCost']),
      includeOnReport: serializer.fromJson<bool>(json['includeOnReport']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'jobId': serializer.toJson<String>(jobId),
      'name': serializer.toJson<String>(name),
      'quantity': serializer.toJson<double>(quantity),
      'unit': serializer.toJson<String>(unit),
      'unitCost': serializer.toJson<double?>(unitCost),
      'includeOnReport': serializer.toJson<bool>(includeOnReport),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  MaterialItem copyWith({
    String? id,
    String? jobId,
    String? name,
    double? quantity,
    String? unit,
    Value<double?> unitCost = const Value.absent(),
    bool? includeOnReport,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => MaterialItem(
    id: id ?? this.id,
    jobId: jobId ?? this.jobId,
    name: name ?? this.name,
    quantity: quantity ?? this.quantity,
    unit: unit ?? this.unit,
    unitCost: unitCost.present ? unitCost.value : this.unitCost,
    includeOnReport: includeOnReport ?? this.includeOnReport,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  MaterialItem copyWithCompanion(MaterialItemsCompanion data) {
    return MaterialItem(
      id: data.id.present ? data.id.value : this.id,
      jobId: data.jobId.present ? data.jobId.value : this.jobId,
      name: data.name.present ? data.name.value : this.name,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
      unit: data.unit.present ? data.unit.value : this.unit,
      unitCost: data.unitCost.present ? data.unitCost.value : this.unitCost,
      includeOnReport: data.includeOnReport.present
          ? data.includeOnReport.value
          : this.includeOnReport,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MaterialItem(')
          ..write('id: $id, ')
          ..write('jobId: $jobId, ')
          ..write('name: $name, ')
          ..write('quantity: $quantity, ')
          ..write('unit: $unit, ')
          ..write('unitCost: $unitCost, ')
          ..write('includeOnReport: $includeOnReport, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    jobId,
    name,
    quantity,
    unit,
    unitCost,
    includeOnReport,
    createdAt,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MaterialItem &&
          other.id == this.id &&
          other.jobId == this.jobId &&
          other.name == this.name &&
          other.quantity == this.quantity &&
          other.unit == this.unit &&
          other.unitCost == this.unitCost &&
          other.includeOnReport == this.includeOnReport &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class MaterialItemsCompanion extends UpdateCompanion<MaterialItem> {
  final Value<String> id;
  final Value<String> jobId;
  final Value<String> name;
  final Value<double> quantity;
  final Value<String> unit;
  final Value<double?> unitCost;
  final Value<bool> includeOnReport;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const MaterialItemsCompanion({
    this.id = const Value.absent(),
    this.jobId = const Value.absent(),
    this.name = const Value.absent(),
    this.quantity = const Value.absent(),
    this.unit = const Value.absent(),
    this.unitCost = const Value.absent(),
    this.includeOnReport = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MaterialItemsCompanion.insert({
    required String id,
    required String jobId,
    required String name,
    required double quantity,
    required String unit,
    this.unitCost = const Value.absent(),
    this.includeOnReport = const Value.absent(),
    required DateTime createdAt,
    required DateTime updatedAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       jobId = Value(jobId),
       name = Value(name),
       quantity = Value(quantity),
       unit = Value(unit),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<MaterialItem> custom({
    Expression<String>? id,
    Expression<String>? jobId,
    Expression<String>? name,
    Expression<double>? quantity,
    Expression<String>? unit,
    Expression<double>? unitCost,
    Expression<bool>? includeOnReport,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (jobId != null) 'job_id': jobId,
      if (name != null) 'name': name,
      if (quantity != null) 'quantity': quantity,
      if (unit != null) 'unit': unit,
      if (unitCost != null) 'unit_cost': unitCost,
      if (includeOnReport != null) 'include_on_report': includeOnReport,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MaterialItemsCompanion copyWith({
    Value<String>? id,
    Value<String>? jobId,
    Value<String>? name,
    Value<double>? quantity,
    Value<String>? unit,
    Value<double?>? unitCost,
    Value<bool>? includeOnReport,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<int>? rowid,
  }) {
    return MaterialItemsCompanion(
      id: id ?? this.id,
      jobId: jobId ?? this.jobId,
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
      unitCost: unitCost ?? this.unitCost,
      includeOnReport: includeOnReport ?? this.includeOnReport,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (jobId.present) {
      map['job_id'] = Variable<String>(jobId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<double>(quantity.value);
    }
    if (unit.present) {
      map['unit'] = Variable<String>(unit.value);
    }
    if (unitCost.present) {
      map['unit_cost'] = Variable<double>(unitCost.value);
    }
    if (includeOnReport.present) {
      map['include_on_report'] = Variable<bool>(includeOnReport.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MaterialItemsCompanion(')
          ..write('id: $id, ')
          ..write('jobId: $jobId, ')
          ..write('name: $name, ')
          ..write('quantity: $quantity, ')
          ..write('unit: $unit, ')
          ..write('unitCost: $unitCost, ')
          ..write('includeOnReport: $includeOnReport, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ChangeOrdersTable extends ChangeOrders
    with TableInfo<$ChangeOrdersTable, ChangeOrder> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ChangeOrdersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _jobIdMeta = const VerificationMeta('jobId');
  @override
  late final GeneratedColumn<String> jobId = GeneratedColumn<String>(
    'job_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES jobs (id)',
    ),
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _reasonMeta = const VerificationMeta('reason');
  @override
  late final GeneratedColumn<String> reason = GeneratedColumn<String>(
    'reason',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _laborCostMeta = const VerificationMeta(
    'laborCost',
  );
  @override
  late final GeneratedColumn<double> laborCost = GeneratedColumn<double>(
    'labor_cost',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _materialCostMeta = const VerificationMeta(
    'materialCost',
  );
  @override
  late final GeneratedColumn<double> materialCost = GeneratedColumn<double>(
    'material_cost',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _otherCostMeta = const VerificationMeta(
    'otherCost',
  );
  @override
  late final GeneratedColumn<double> otherCost = GeneratedColumn<double>(
    'other_cost',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _attachedPhotoIdsJsonMeta =
      const VerificationMeta('attachedPhotoIdsJson');
  @override
  late final GeneratedColumn<String> attachedPhotoIdsJson =
      GeneratedColumn<String>(
        'attached_photo_ids_json',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        defaultValue: const Constant('[]'),
      );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _approvalSignatureIdMeta =
      const VerificationMeta('approvalSignatureId');
  @override
  late final GeneratedColumn<String> approvalSignatureId =
      GeneratedColumn<String>(
        'approval_signature_id',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    jobId,
    title,
    reason,
    description,
    laborCost,
    materialCost,
    otherCost,
    attachedPhotoIdsJson,
    status,
    approvalSignatureId,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'change_orders';
  @override
  VerificationContext validateIntegrity(
    Insertable<ChangeOrder> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('job_id')) {
      context.handle(
        _jobIdMeta,
        jobId.isAcceptableOrUnknown(data['job_id']!, _jobIdMeta),
      );
    } else if (isInserting) {
      context.missing(_jobIdMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('reason')) {
      context.handle(
        _reasonMeta,
        reason.isAcceptableOrUnknown(data['reason']!, _reasonMeta),
      );
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('labor_cost')) {
      context.handle(
        _laborCostMeta,
        laborCost.isAcceptableOrUnknown(data['labor_cost']!, _laborCostMeta),
      );
    }
    if (data.containsKey('material_cost')) {
      context.handle(
        _materialCostMeta,
        materialCost.isAcceptableOrUnknown(
          data['material_cost']!,
          _materialCostMeta,
        ),
      );
    }
    if (data.containsKey('other_cost')) {
      context.handle(
        _otherCostMeta,
        otherCost.isAcceptableOrUnknown(data['other_cost']!, _otherCostMeta),
      );
    }
    if (data.containsKey('attached_photo_ids_json')) {
      context.handle(
        _attachedPhotoIdsJsonMeta,
        attachedPhotoIdsJson.isAcceptableOrUnknown(
          data['attached_photo_ids_json']!,
          _attachedPhotoIdsJsonMeta,
        ),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('approval_signature_id')) {
      context.handle(
        _approvalSignatureIdMeta,
        approvalSignatureId.isAcceptableOrUnknown(
          data['approval_signature_id']!,
          _approvalSignatureIdMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ChangeOrder map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ChangeOrder(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      jobId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}job_id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      reason: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}reason'],
      ),
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      laborCost: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}labor_cost'],
      )!,
      materialCost: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}material_cost'],
      )!,
      otherCost: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}other_cost'],
      )!,
      attachedPhotoIdsJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}attached_photo_ids_json'],
      )!,
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      approvalSignatureId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}approval_signature_id'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $ChangeOrdersTable createAlias(String alias) {
    return $ChangeOrdersTable(attachedDatabase, alias);
  }
}

class ChangeOrder extends DataClass implements Insertable<ChangeOrder> {
  final String id;
  final String jobId;
  final String title;
  final String? reason;
  final String? description;
  final double laborCost;
  final double materialCost;
  final double otherCost;
  final String attachedPhotoIdsJson;
  final String status;
  final String? approvalSignatureId;
  final DateTime createdAt;
  final DateTime updatedAt;
  const ChangeOrder({
    required this.id,
    required this.jobId,
    required this.title,
    this.reason,
    this.description,
    required this.laborCost,
    required this.materialCost,
    required this.otherCost,
    required this.attachedPhotoIdsJson,
    required this.status,
    this.approvalSignatureId,
    required this.createdAt,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['job_id'] = Variable<String>(jobId);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || reason != null) {
      map['reason'] = Variable<String>(reason);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['labor_cost'] = Variable<double>(laborCost);
    map['material_cost'] = Variable<double>(materialCost);
    map['other_cost'] = Variable<double>(otherCost);
    map['attached_photo_ids_json'] = Variable<String>(attachedPhotoIdsJson);
    map['status'] = Variable<String>(status);
    if (!nullToAbsent || approvalSignatureId != null) {
      map['approval_signature_id'] = Variable<String>(approvalSignatureId);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  ChangeOrdersCompanion toCompanion(bool nullToAbsent) {
    return ChangeOrdersCompanion(
      id: Value(id),
      jobId: Value(jobId),
      title: Value(title),
      reason: reason == null && nullToAbsent
          ? const Value.absent()
          : Value(reason),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      laborCost: Value(laborCost),
      materialCost: Value(materialCost),
      otherCost: Value(otherCost),
      attachedPhotoIdsJson: Value(attachedPhotoIdsJson),
      status: Value(status),
      approvalSignatureId: approvalSignatureId == null && nullToAbsent
          ? const Value.absent()
          : Value(approvalSignatureId),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory ChangeOrder.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ChangeOrder(
      id: serializer.fromJson<String>(json['id']),
      jobId: serializer.fromJson<String>(json['jobId']),
      title: serializer.fromJson<String>(json['title']),
      reason: serializer.fromJson<String?>(json['reason']),
      description: serializer.fromJson<String?>(json['description']),
      laborCost: serializer.fromJson<double>(json['laborCost']),
      materialCost: serializer.fromJson<double>(json['materialCost']),
      otherCost: serializer.fromJson<double>(json['otherCost']),
      attachedPhotoIdsJson: serializer.fromJson<String>(
        json['attachedPhotoIdsJson'],
      ),
      status: serializer.fromJson<String>(json['status']),
      approvalSignatureId: serializer.fromJson<String?>(
        json['approvalSignatureId'],
      ),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'jobId': serializer.toJson<String>(jobId),
      'title': serializer.toJson<String>(title),
      'reason': serializer.toJson<String?>(reason),
      'description': serializer.toJson<String?>(description),
      'laborCost': serializer.toJson<double>(laborCost),
      'materialCost': serializer.toJson<double>(materialCost),
      'otherCost': serializer.toJson<double>(otherCost),
      'attachedPhotoIdsJson': serializer.toJson<String>(attachedPhotoIdsJson),
      'status': serializer.toJson<String>(status),
      'approvalSignatureId': serializer.toJson<String?>(approvalSignatureId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  ChangeOrder copyWith({
    String? id,
    String? jobId,
    String? title,
    Value<String?> reason = const Value.absent(),
    Value<String?> description = const Value.absent(),
    double? laborCost,
    double? materialCost,
    double? otherCost,
    String? attachedPhotoIdsJson,
    String? status,
    Value<String?> approvalSignatureId = const Value.absent(),
    DateTime? createdAt,
    DateTime? updatedAt,
  }) => ChangeOrder(
    id: id ?? this.id,
    jobId: jobId ?? this.jobId,
    title: title ?? this.title,
    reason: reason.present ? reason.value : this.reason,
    description: description.present ? description.value : this.description,
    laborCost: laborCost ?? this.laborCost,
    materialCost: materialCost ?? this.materialCost,
    otherCost: otherCost ?? this.otherCost,
    attachedPhotoIdsJson: attachedPhotoIdsJson ?? this.attachedPhotoIdsJson,
    status: status ?? this.status,
    approvalSignatureId: approvalSignatureId.present
        ? approvalSignatureId.value
        : this.approvalSignatureId,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  ChangeOrder copyWithCompanion(ChangeOrdersCompanion data) {
    return ChangeOrder(
      id: data.id.present ? data.id.value : this.id,
      jobId: data.jobId.present ? data.jobId.value : this.jobId,
      title: data.title.present ? data.title.value : this.title,
      reason: data.reason.present ? data.reason.value : this.reason,
      description: data.description.present
          ? data.description.value
          : this.description,
      laborCost: data.laborCost.present ? data.laborCost.value : this.laborCost,
      materialCost: data.materialCost.present
          ? data.materialCost.value
          : this.materialCost,
      otherCost: data.otherCost.present ? data.otherCost.value : this.otherCost,
      attachedPhotoIdsJson: data.attachedPhotoIdsJson.present
          ? data.attachedPhotoIdsJson.value
          : this.attachedPhotoIdsJson,
      status: data.status.present ? data.status.value : this.status,
      approvalSignatureId: data.approvalSignatureId.present
          ? data.approvalSignatureId.value
          : this.approvalSignatureId,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ChangeOrder(')
          ..write('id: $id, ')
          ..write('jobId: $jobId, ')
          ..write('title: $title, ')
          ..write('reason: $reason, ')
          ..write('description: $description, ')
          ..write('laborCost: $laborCost, ')
          ..write('materialCost: $materialCost, ')
          ..write('otherCost: $otherCost, ')
          ..write('attachedPhotoIdsJson: $attachedPhotoIdsJson, ')
          ..write('status: $status, ')
          ..write('approvalSignatureId: $approvalSignatureId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    jobId,
    title,
    reason,
    description,
    laborCost,
    materialCost,
    otherCost,
    attachedPhotoIdsJson,
    status,
    approvalSignatureId,
    createdAt,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ChangeOrder &&
          other.id == this.id &&
          other.jobId == this.jobId &&
          other.title == this.title &&
          other.reason == this.reason &&
          other.description == this.description &&
          other.laborCost == this.laborCost &&
          other.materialCost == this.materialCost &&
          other.otherCost == this.otherCost &&
          other.attachedPhotoIdsJson == this.attachedPhotoIdsJson &&
          other.status == this.status &&
          other.approvalSignatureId == this.approvalSignatureId &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class ChangeOrdersCompanion extends UpdateCompanion<ChangeOrder> {
  final Value<String> id;
  final Value<String> jobId;
  final Value<String> title;
  final Value<String?> reason;
  final Value<String?> description;
  final Value<double> laborCost;
  final Value<double> materialCost;
  final Value<double> otherCost;
  final Value<String> attachedPhotoIdsJson;
  final Value<String> status;
  final Value<String?> approvalSignatureId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const ChangeOrdersCompanion({
    this.id = const Value.absent(),
    this.jobId = const Value.absent(),
    this.title = const Value.absent(),
    this.reason = const Value.absent(),
    this.description = const Value.absent(),
    this.laborCost = const Value.absent(),
    this.materialCost = const Value.absent(),
    this.otherCost = const Value.absent(),
    this.attachedPhotoIdsJson = const Value.absent(),
    this.status = const Value.absent(),
    this.approvalSignatureId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ChangeOrdersCompanion.insert({
    required String id,
    required String jobId,
    required String title,
    this.reason = const Value.absent(),
    this.description = const Value.absent(),
    this.laborCost = const Value.absent(),
    this.materialCost = const Value.absent(),
    this.otherCost = const Value.absent(),
    this.attachedPhotoIdsJson = const Value.absent(),
    required String status,
    this.approvalSignatureId = const Value.absent(),
    required DateTime createdAt,
    required DateTime updatedAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       jobId = Value(jobId),
       title = Value(title),
       status = Value(status),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<ChangeOrder> custom({
    Expression<String>? id,
    Expression<String>? jobId,
    Expression<String>? title,
    Expression<String>? reason,
    Expression<String>? description,
    Expression<double>? laborCost,
    Expression<double>? materialCost,
    Expression<double>? otherCost,
    Expression<String>? attachedPhotoIdsJson,
    Expression<String>? status,
    Expression<String>? approvalSignatureId,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (jobId != null) 'job_id': jobId,
      if (title != null) 'title': title,
      if (reason != null) 'reason': reason,
      if (description != null) 'description': description,
      if (laborCost != null) 'labor_cost': laborCost,
      if (materialCost != null) 'material_cost': materialCost,
      if (otherCost != null) 'other_cost': otherCost,
      if (attachedPhotoIdsJson != null)
        'attached_photo_ids_json': attachedPhotoIdsJson,
      if (status != null) 'status': status,
      if (approvalSignatureId != null)
        'approval_signature_id': approvalSignatureId,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ChangeOrdersCompanion copyWith({
    Value<String>? id,
    Value<String>? jobId,
    Value<String>? title,
    Value<String?>? reason,
    Value<String?>? description,
    Value<double>? laborCost,
    Value<double>? materialCost,
    Value<double>? otherCost,
    Value<String>? attachedPhotoIdsJson,
    Value<String>? status,
    Value<String?>? approvalSignatureId,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<int>? rowid,
  }) {
    return ChangeOrdersCompanion(
      id: id ?? this.id,
      jobId: jobId ?? this.jobId,
      title: title ?? this.title,
      reason: reason ?? this.reason,
      description: description ?? this.description,
      laborCost: laborCost ?? this.laborCost,
      materialCost: materialCost ?? this.materialCost,
      otherCost: otherCost ?? this.otherCost,
      attachedPhotoIdsJson: attachedPhotoIdsJson ?? this.attachedPhotoIdsJson,
      status: status ?? this.status,
      approvalSignatureId: approvalSignatureId ?? this.approvalSignatureId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (jobId.present) {
      map['job_id'] = Variable<String>(jobId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (reason.present) {
      map['reason'] = Variable<String>(reason.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (laborCost.present) {
      map['labor_cost'] = Variable<double>(laborCost.value);
    }
    if (materialCost.present) {
      map['material_cost'] = Variable<double>(materialCost.value);
    }
    if (otherCost.present) {
      map['other_cost'] = Variable<double>(otherCost.value);
    }
    if (attachedPhotoIdsJson.present) {
      map['attached_photo_ids_json'] = Variable<String>(
        attachedPhotoIdsJson.value,
      );
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (approvalSignatureId.present) {
      map['approval_signature_id'] = Variable<String>(
        approvalSignatureId.value,
      );
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ChangeOrdersCompanion(')
          ..write('id: $id, ')
          ..write('jobId: $jobId, ')
          ..write('title: $title, ')
          ..write('reason: $reason, ')
          ..write('description: $description, ')
          ..write('laborCost: $laborCost, ')
          ..write('materialCost: $materialCost, ')
          ..write('otherCost: $otherCost, ')
          ..write('attachedPhotoIdsJson: $attachedPhotoIdsJson, ')
          ..write('status: $status, ')
          ..write('approvalSignatureId: $approvalSignatureId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SignatureRecordsTable extends SignatureRecords
    with TableInfo<$SignatureRecordsTable, SignatureRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SignatureRecordsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _jobIdMeta = const VerificationMeta('jobId');
  @override
  late final GeneratedColumn<String> jobId = GeneratedColumn<String>(
    'job_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES jobs (id)',
    ),
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _signerNameMeta = const VerificationMeta(
    'signerName',
  );
  @override
  late final GeneratedColumn<String> signerName = GeneratedColumn<String>(
    'signer_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _filePathMeta = const VerificationMeta(
    'filePath',
  );
  @override
  late final GeneratedColumn<String> filePath = GeneratedColumn<String>(
    'file_path',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _signedAtMeta = const VerificationMeta(
    'signedAt',
  );
  @override
  late final GeneratedColumn<DateTime> signedAt = GeneratedColumn<DateTime>(
    'signed_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    jobId,
    type,
    signerName,
    filePath,
    signedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'signature_records';
  @override
  VerificationContext validateIntegrity(
    Insertable<SignatureRecord> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('job_id')) {
      context.handle(
        _jobIdMeta,
        jobId.isAcceptableOrUnknown(data['job_id']!, _jobIdMeta),
      );
    } else if (isInserting) {
      context.missing(_jobIdMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('signer_name')) {
      context.handle(
        _signerNameMeta,
        signerName.isAcceptableOrUnknown(data['signer_name']!, _signerNameMeta),
      );
    } else if (isInserting) {
      context.missing(_signerNameMeta);
    }
    if (data.containsKey('file_path')) {
      context.handle(
        _filePathMeta,
        filePath.isAcceptableOrUnknown(data['file_path']!, _filePathMeta),
      );
    } else if (isInserting) {
      context.missing(_filePathMeta);
    }
    if (data.containsKey('signed_at')) {
      context.handle(
        _signedAtMeta,
        signedAt.isAcceptableOrUnknown(data['signed_at']!, _signedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_signedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SignatureRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SignatureRecord(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      jobId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}job_id'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      signerName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}signer_name'],
      )!,
      filePath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}file_path'],
      )!,
      signedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}signed_at'],
      )!,
    );
  }

  @override
  $SignatureRecordsTable createAlias(String alias) {
    return $SignatureRecordsTable(attachedDatabase, alias);
  }
}

class SignatureRecord extends DataClass implements Insertable<SignatureRecord> {
  final String id;
  final String jobId;
  final String type;
  final String signerName;
  final String filePath;
  final DateTime signedAt;
  const SignatureRecord({
    required this.id,
    required this.jobId,
    required this.type,
    required this.signerName,
    required this.filePath,
    required this.signedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['job_id'] = Variable<String>(jobId);
    map['type'] = Variable<String>(type);
    map['signer_name'] = Variable<String>(signerName);
    map['file_path'] = Variable<String>(filePath);
    map['signed_at'] = Variable<DateTime>(signedAt);
    return map;
  }

  SignatureRecordsCompanion toCompanion(bool nullToAbsent) {
    return SignatureRecordsCompanion(
      id: Value(id),
      jobId: Value(jobId),
      type: Value(type),
      signerName: Value(signerName),
      filePath: Value(filePath),
      signedAt: Value(signedAt),
    );
  }

  factory SignatureRecord.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SignatureRecord(
      id: serializer.fromJson<String>(json['id']),
      jobId: serializer.fromJson<String>(json['jobId']),
      type: serializer.fromJson<String>(json['type']),
      signerName: serializer.fromJson<String>(json['signerName']),
      filePath: serializer.fromJson<String>(json['filePath']),
      signedAt: serializer.fromJson<DateTime>(json['signedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'jobId': serializer.toJson<String>(jobId),
      'type': serializer.toJson<String>(type),
      'signerName': serializer.toJson<String>(signerName),
      'filePath': serializer.toJson<String>(filePath),
      'signedAt': serializer.toJson<DateTime>(signedAt),
    };
  }

  SignatureRecord copyWith({
    String? id,
    String? jobId,
    String? type,
    String? signerName,
    String? filePath,
    DateTime? signedAt,
  }) => SignatureRecord(
    id: id ?? this.id,
    jobId: jobId ?? this.jobId,
    type: type ?? this.type,
    signerName: signerName ?? this.signerName,
    filePath: filePath ?? this.filePath,
    signedAt: signedAt ?? this.signedAt,
  );
  SignatureRecord copyWithCompanion(SignatureRecordsCompanion data) {
    return SignatureRecord(
      id: data.id.present ? data.id.value : this.id,
      jobId: data.jobId.present ? data.jobId.value : this.jobId,
      type: data.type.present ? data.type.value : this.type,
      signerName: data.signerName.present
          ? data.signerName.value
          : this.signerName,
      filePath: data.filePath.present ? data.filePath.value : this.filePath,
      signedAt: data.signedAt.present ? data.signedAt.value : this.signedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SignatureRecord(')
          ..write('id: $id, ')
          ..write('jobId: $jobId, ')
          ..write('type: $type, ')
          ..write('signerName: $signerName, ')
          ..write('filePath: $filePath, ')
          ..write('signedAt: $signedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, jobId, type, signerName, filePath, signedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SignatureRecord &&
          other.id == this.id &&
          other.jobId == this.jobId &&
          other.type == this.type &&
          other.signerName == this.signerName &&
          other.filePath == this.filePath &&
          other.signedAt == this.signedAt);
}

class SignatureRecordsCompanion extends UpdateCompanion<SignatureRecord> {
  final Value<String> id;
  final Value<String> jobId;
  final Value<String> type;
  final Value<String> signerName;
  final Value<String> filePath;
  final Value<DateTime> signedAt;
  final Value<int> rowid;
  const SignatureRecordsCompanion({
    this.id = const Value.absent(),
    this.jobId = const Value.absent(),
    this.type = const Value.absent(),
    this.signerName = const Value.absent(),
    this.filePath = const Value.absent(),
    this.signedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SignatureRecordsCompanion.insert({
    required String id,
    required String jobId,
    required String type,
    required String signerName,
    required String filePath,
    required DateTime signedAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       jobId = Value(jobId),
       type = Value(type),
       signerName = Value(signerName),
       filePath = Value(filePath),
       signedAt = Value(signedAt);
  static Insertable<SignatureRecord> custom({
    Expression<String>? id,
    Expression<String>? jobId,
    Expression<String>? type,
    Expression<String>? signerName,
    Expression<String>? filePath,
    Expression<DateTime>? signedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (jobId != null) 'job_id': jobId,
      if (type != null) 'type': type,
      if (signerName != null) 'signer_name': signerName,
      if (filePath != null) 'file_path': filePath,
      if (signedAt != null) 'signed_at': signedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SignatureRecordsCompanion copyWith({
    Value<String>? id,
    Value<String>? jobId,
    Value<String>? type,
    Value<String>? signerName,
    Value<String>? filePath,
    Value<DateTime>? signedAt,
    Value<int>? rowid,
  }) {
    return SignatureRecordsCompanion(
      id: id ?? this.id,
      jobId: jobId ?? this.jobId,
      type: type ?? this.type,
      signerName: signerName ?? this.signerName,
      filePath: filePath ?? this.filePath,
      signedAt: signedAt ?? this.signedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (jobId.present) {
      map['job_id'] = Variable<String>(jobId.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (signerName.present) {
      map['signer_name'] = Variable<String>(signerName.value);
    }
    if (filePath.present) {
      map['file_path'] = Variable<String>(filePath.value);
    }
    if (signedAt.present) {
      map['signed_at'] = Variable<DateTime>(signedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SignatureRecordsCompanion(')
          ..write('id: $id, ')
          ..write('jobId: $jobId, ')
          ..write('type: $type, ')
          ..write('signerName: $signerName, ')
          ..write('filePath: $filePath, ')
          ..write('signedAt: $signedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $GeneratedReportsTable extends GeneratedReports
    with TableInfo<$GeneratedReportsTable, GeneratedReport> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GeneratedReportsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _jobIdMeta = const VerificationMeta('jobId');
  @override
  late final GeneratedColumn<String> jobId = GeneratedColumn<String>(
    'job_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES jobs (id)',
    ),
  );
  static const VerificationMeta _filePathMeta = const VerificationMeta(
    'filePath',
  );
  @override
  late final GeneratedColumn<String> filePath = GeneratedColumn<String>(
    'file_path',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _reportTypeMeta = const VerificationMeta(
    'reportType',
  );
  @override
  late final GeneratedColumn<String> reportType = GeneratedColumn<String>(
    'report_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _templateMeta = const VerificationMeta(
    'template',
  );
  @override
  late final GeneratedColumn<String> template = GeneratedColumn<String>(
    'template',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    jobId,
    filePath,
    reportType,
    template,
    title,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'generated_reports';
  @override
  VerificationContext validateIntegrity(
    Insertable<GeneratedReport> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('job_id')) {
      context.handle(
        _jobIdMeta,
        jobId.isAcceptableOrUnknown(data['job_id']!, _jobIdMeta),
      );
    } else if (isInserting) {
      context.missing(_jobIdMeta);
    }
    if (data.containsKey('file_path')) {
      context.handle(
        _filePathMeta,
        filePath.isAcceptableOrUnknown(data['file_path']!, _filePathMeta),
      );
    } else if (isInserting) {
      context.missing(_filePathMeta);
    }
    if (data.containsKey('report_type')) {
      context.handle(
        _reportTypeMeta,
        reportType.isAcceptableOrUnknown(data['report_type']!, _reportTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_reportTypeMeta);
    }
    if (data.containsKey('template')) {
      context.handle(
        _templateMeta,
        template.isAcceptableOrUnknown(data['template']!, _templateMeta),
      );
    } else if (isInserting) {
      context.missing(_templateMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  GeneratedReport map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GeneratedReport(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      jobId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}job_id'],
      )!,
      filePath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}file_path'],
      )!,
      reportType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}report_type'],
      )!,
      template: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}template'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $GeneratedReportsTable createAlias(String alias) {
    return $GeneratedReportsTable(attachedDatabase, alias);
  }
}

class GeneratedReport extends DataClass implements Insertable<GeneratedReport> {
  final String id;
  final String jobId;
  final String filePath;
  final String reportType;
  final String template;
  final String title;
  final DateTime createdAt;
  const GeneratedReport({
    required this.id,
    required this.jobId,
    required this.filePath,
    required this.reportType,
    required this.template,
    required this.title,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['job_id'] = Variable<String>(jobId);
    map['file_path'] = Variable<String>(filePath);
    map['report_type'] = Variable<String>(reportType);
    map['template'] = Variable<String>(template);
    map['title'] = Variable<String>(title);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  GeneratedReportsCompanion toCompanion(bool nullToAbsent) {
    return GeneratedReportsCompanion(
      id: Value(id),
      jobId: Value(jobId),
      filePath: Value(filePath),
      reportType: Value(reportType),
      template: Value(template),
      title: Value(title),
      createdAt: Value(createdAt),
    );
  }

  factory GeneratedReport.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GeneratedReport(
      id: serializer.fromJson<String>(json['id']),
      jobId: serializer.fromJson<String>(json['jobId']),
      filePath: serializer.fromJson<String>(json['filePath']),
      reportType: serializer.fromJson<String>(json['reportType']),
      template: serializer.fromJson<String>(json['template']),
      title: serializer.fromJson<String>(json['title']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'jobId': serializer.toJson<String>(jobId),
      'filePath': serializer.toJson<String>(filePath),
      'reportType': serializer.toJson<String>(reportType),
      'template': serializer.toJson<String>(template),
      'title': serializer.toJson<String>(title),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  GeneratedReport copyWith({
    String? id,
    String? jobId,
    String? filePath,
    String? reportType,
    String? template,
    String? title,
    DateTime? createdAt,
  }) => GeneratedReport(
    id: id ?? this.id,
    jobId: jobId ?? this.jobId,
    filePath: filePath ?? this.filePath,
    reportType: reportType ?? this.reportType,
    template: template ?? this.template,
    title: title ?? this.title,
    createdAt: createdAt ?? this.createdAt,
  );
  GeneratedReport copyWithCompanion(GeneratedReportsCompanion data) {
    return GeneratedReport(
      id: data.id.present ? data.id.value : this.id,
      jobId: data.jobId.present ? data.jobId.value : this.jobId,
      filePath: data.filePath.present ? data.filePath.value : this.filePath,
      reportType: data.reportType.present
          ? data.reportType.value
          : this.reportType,
      template: data.template.present ? data.template.value : this.template,
      title: data.title.present ? data.title.value : this.title,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GeneratedReport(')
          ..write('id: $id, ')
          ..write('jobId: $jobId, ')
          ..write('filePath: $filePath, ')
          ..write('reportType: $reportType, ')
          ..write('template: $template, ')
          ..write('title: $title, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, jobId, filePath, reportType, template, title, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GeneratedReport &&
          other.id == this.id &&
          other.jobId == this.jobId &&
          other.filePath == this.filePath &&
          other.reportType == this.reportType &&
          other.template == this.template &&
          other.title == this.title &&
          other.createdAt == this.createdAt);
}

class GeneratedReportsCompanion extends UpdateCompanion<GeneratedReport> {
  final Value<String> id;
  final Value<String> jobId;
  final Value<String> filePath;
  final Value<String> reportType;
  final Value<String> template;
  final Value<String> title;
  final Value<DateTime> createdAt;
  final Value<int> rowid;
  const GeneratedReportsCompanion({
    this.id = const Value.absent(),
    this.jobId = const Value.absent(),
    this.filePath = const Value.absent(),
    this.reportType = const Value.absent(),
    this.template = const Value.absent(),
    this.title = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  GeneratedReportsCompanion.insert({
    required String id,
    required String jobId,
    required String filePath,
    required String reportType,
    required String template,
    required String title,
    required DateTime createdAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       jobId = Value(jobId),
       filePath = Value(filePath),
       reportType = Value(reportType),
       template = Value(template),
       title = Value(title),
       createdAt = Value(createdAt);
  static Insertable<GeneratedReport> custom({
    Expression<String>? id,
    Expression<String>? jobId,
    Expression<String>? filePath,
    Expression<String>? reportType,
    Expression<String>? template,
    Expression<String>? title,
    Expression<DateTime>? createdAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (jobId != null) 'job_id': jobId,
      if (filePath != null) 'file_path': filePath,
      if (reportType != null) 'report_type': reportType,
      if (template != null) 'template': template,
      if (title != null) 'title': title,
      if (createdAt != null) 'created_at': createdAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  GeneratedReportsCompanion copyWith({
    Value<String>? id,
    Value<String>? jobId,
    Value<String>? filePath,
    Value<String>? reportType,
    Value<String>? template,
    Value<String>? title,
    Value<DateTime>? createdAt,
    Value<int>? rowid,
  }) {
    return GeneratedReportsCompanion(
      id: id ?? this.id,
      jobId: jobId ?? this.jobId,
      filePath: filePath ?? this.filePath,
      reportType: reportType ?? this.reportType,
      template: template ?? this.template,
      title: title ?? this.title,
      createdAt: createdAt ?? this.createdAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (jobId.present) {
      map['job_id'] = Variable<String>(jobId.value);
    }
    if (filePath.present) {
      map['file_path'] = Variable<String>(filePath.value);
    }
    if (reportType.present) {
      map['report_type'] = Variable<String>(reportType.value);
    }
    if (template.present) {
      map['template'] = Variable<String>(template.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GeneratedReportsCompanion(')
          ..write('id: $id, ')
          ..write('jobId: $jobId, ')
          ..write('filePath: $filePath, ')
          ..write('reportType: $reportType, ')
          ..write('template: $template, ')
          ..write('title: $title, ')
          ..write('createdAt: $createdAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CompanyProfilesTable extends CompanyProfiles
    with TableInfo<$CompanyProfilesTable, CompanyProfile> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CompanyProfilesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _companyNameMeta = const VerificationMeta(
    'companyName',
  );
  @override
  late final GeneratedColumn<String> companyName = GeneratedColumn<String>(
    'company_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
    'phone',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
    'email',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _licenseNumberMeta = const VerificationMeta(
    'licenseNumber',
  );
  @override
  late final GeneratedColumn<String> licenseNumber = GeneratedColumn<String>(
    'license_number',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _defaultTechnicianNameMeta =
      const VerificationMeta('defaultTechnicianName');
  @override
  late final GeneratedColumn<String> defaultTechnicianName =
      GeneratedColumn<String>(
        'default_technician_name',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _logoPathMeta = const VerificationMeta(
    'logoPath',
  );
  @override
  late final GeneratedColumn<String> logoPath = GeneratedColumn<String>(
    'logo_path',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _defaultDisclaimerMeta = const VerificationMeta(
    'defaultDisclaimer',
  );
  @override
  late final GeneratedColumn<String> defaultDisclaimer =
      GeneratedColumn<String>(
        'default_disclaimer',
        aliasedName,
        true,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
      );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    companyName,
    phone,
    email,
    licenseNumber,
    defaultTechnicianName,
    logoPath,
    defaultDisclaimer,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'company_profiles';
  @override
  VerificationContext validateIntegrity(
    Insertable<CompanyProfile> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('company_name')) {
      context.handle(
        _companyNameMeta,
        companyName.isAcceptableOrUnknown(
          data['company_name']!,
          _companyNameMeta,
        ),
      );
    }
    if (data.containsKey('phone')) {
      context.handle(
        _phoneMeta,
        phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta),
      );
    }
    if (data.containsKey('email')) {
      context.handle(
        _emailMeta,
        email.isAcceptableOrUnknown(data['email']!, _emailMeta),
      );
    }
    if (data.containsKey('license_number')) {
      context.handle(
        _licenseNumberMeta,
        licenseNumber.isAcceptableOrUnknown(
          data['license_number']!,
          _licenseNumberMeta,
        ),
      );
    }
    if (data.containsKey('default_technician_name')) {
      context.handle(
        _defaultTechnicianNameMeta,
        defaultTechnicianName.isAcceptableOrUnknown(
          data['default_technician_name']!,
          _defaultTechnicianNameMeta,
        ),
      );
    }
    if (data.containsKey('logo_path')) {
      context.handle(
        _logoPathMeta,
        logoPath.isAcceptableOrUnknown(data['logo_path']!, _logoPathMeta),
      );
    }
    if (data.containsKey('default_disclaimer')) {
      context.handle(
        _defaultDisclaimerMeta,
        defaultDisclaimer.isAcceptableOrUnknown(
          data['default_disclaimer']!,
          _defaultDisclaimerMeta,
        ),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CompanyProfile map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CompanyProfile(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      companyName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}company_name'],
      ),
      phone: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}phone'],
      ),
      email: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}email'],
      ),
      licenseNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}license_number'],
      ),
      defaultTechnicianName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}default_technician_name'],
      ),
      logoPath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}logo_path'],
      ),
      defaultDisclaimer: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}default_disclaimer'],
      ),
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $CompanyProfilesTable createAlias(String alias) {
    return $CompanyProfilesTable(attachedDatabase, alias);
  }
}

class CompanyProfile extends DataClass implements Insertable<CompanyProfile> {
  final String id;
  final String? companyName;
  final String? phone;
  final String? email;
  final String? licenseNumber;
  final String? defaultTechnicianName;
  final String? logoPath;
  final String? defaultDisclaimer;
  final DateTime updatedAt;
  const CompanyProfile({
    required this.id,
    this.companyName,
    this.phone,
    this.email,
    this.licenseNumber,
    this.defaultTechnicianName,
    this.logoPath,
    this.defaultDisclaimer,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    if (!nullToAbsent || companyName != null) {
      map['company_name'] = Variable<String>(companyName);
    }
    if (!nullToAbsent || phone != null) {
      map['phone'] = Variable<String>(phone);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || licenseNumber != null) {
      map['license_number'] = Variable<String>(licenseNumber);
    }
    if (!nullToAbsent || defaultTechnicianName != null) {
      map['default_technician_name'] = Variable<String>(defaultTechnicianName);
    }
    if (!nullToAbsent || logoPath != null) {
      map['logo_path'] = Variable<String>(logoPath);
    }
    if (!nullToAbsent || defaultDisclaimer != null) {
      map['default_disclaimer'] = Variable<String>(defaultDisclaimer);
    }
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  CompanyProfilesCompanion toCompanion(bool nullToAbsent) {
    return CompanyProfilesCompanion(
      id: Value(id),
      companyName: companyName == null && nullToAbsent
          ? const Value.absent()
          : Value(companyName),
      phone: phone == null && nullToAbsent
          ? const Value.absent()
          : Value(phone),
      email: email == null && nullToAbsent
          ? const Value.absent()
          : Value(email),
      licenseNumber: licenseNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(licenseNumber),
      defaultTechnicianName: defaultTechnicianName == null && nullToAbsent
          ? const Value.absent()
          : Value(defaultTechnicianName),
      logoPath: logoPath == null && nullToAbsent
          ? const Value.absent()
          : Value(logoPath),
      defaultDisclaimer: defaultDisclaimer == null && nullToAbsent
          ? const Value.absent()
          : Value(defaultDisclaimer),
      updatedAt: Value(updatedAt),
    );
  }

  factory CompanyProfile.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CompanyProfile(
      id: serializer.fromJson<String>(json['id']),
      companyName: serializer.fromJson<String?>(json['companyName']),
      phone: serializer.fromJson<String?>(json['phone']),
      email: serializer.fromJson<String?>(json['email']),
      licenseNumber: serializer.fromJson<String?>(json['licenseNumber']),
      defaultTechnicianName: serializer.fromJson<String?>(
        json['defaultTechnicianName'],
      ),
      logoPath: serializer.fromJson<String?>(json['logoPath']),
      defaultDisclaimer: serializer.fromJson<String?>(
        json['defaultDisclaimer'],
      ),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'companyName': serializer.toJson<String?>(companyName),
      'phone': serializer.toJson<String?>(phone),
      'email': serializer.toJson<String?>(email),
      'licenseNumber': serializer.toJson<String?>(licenseNumber),
      'defaultTechnicianName': serializer.toJson<String?>(
        defaultTechnicianName,
      ),
      'logoPath': serializer.toJson<String?>(logoPath),
      'defaultDisclaimer': serializer.toJson<String?>(defaultDisclaimer),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  CompanyProfile copyWith({
    String? id,
    Value<String?> companyName = const Value.absent(),
    Value<String?> phone = const Value.absent(),
    Value<String?> email = const Value.absent(),
    Value<String?> licenseNumber = const Value.absent(),
    Value<String?> defaultTechnicianName = const Value.absent(),
    Value<String?> logoPath = const Value.absent(),
    Value<String?> defaultDisclaimer = const Value.absent(),
    DateTime? updatedAt,
  }) => CompanyProfile(
    id: id ?? this.id,
    companyName: companyName.present ? companyName.value : this.companyName,
    phone: phone.present ? phone.value : this.phone,
    email: email.present ? email.value : this.email,
    licenseNumber: licenseNumber.present
        ? licenseNumber.value
        : this.licenseNumber,
    defaultTechnicianName: defaultTechnicianName.present
        ? defaultTechnicianName.value
        : this.defaultTechnicianName,
    logoPath: logoPath.present ? logoPath.value : this.logoPath,
    defaultDisclaimer: defaultDisclaimer.present
        ? defaultDisclaimer.value
        : this.defaultDisclaimer,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  CompanyProfile copyWithCompanion(CompanyProfilesCompanion data) {
    return CompanyProfile(
      id: data.id.present ? data.id.value : this.id,
      companyName: data.companyName.present
          ? data.companyName.value
          : this.companyName,
      phone: data.phone.present ? data.phone.value : this.phone,
      email: data.email.present ? data.email.value : this.email,
      licenseNumber: data.licenseNumber.present
          ? data.licenseNumber.value
          : this.licenseNumber,
      defaultTechnicianName: data.defaultTechnicianName.present
          ? data.defaultTechnicianName.value
          : this.defaultTechnicianName,
      logoPath: data.logoPath.present ? data.logoPath.value : this.logoPath,
      defaultDisclaimer: data.defaultDisclaimer.present
          ? data.defaultDisclaimer.value
          : this.defaultDisclaimer,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CompanyProfile(')
          ..write('id: $id, ')
          ..write('companyName: $companyName, ')
          ..write('phone: $phone, ')
          ..write('email: $email, ')
          ..write('licenseNumber: $licenseNumber, ')
          ..write('defaultTechnicianName: $defaultTechnicianName, ')
          ..write('logoPath: $logoPath, ')
          ..write('defaultDisclaimer: $defaultDisclaimer, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    companyName,
    phone,
    email,
    licenseNumber,
    defaultTechnicianName,
    logoPath,
    defaultDisclaimer,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CompanyProfile &&
          other.id == this.id &&
          other.companyName == this.companyName &&
          other.phone == this.phone &&
          other.email == this.email &&
          other.licenseNumber == this.licenseNumber &&
          other.defaultTechnicianName == this.defaultTechnicianName &&
          other.logoPath == this.logoPath &&
          other.defaultDisclaimer == this.defaultDisclaimer &&
          other.updatedAt == this.updatedAt);
}

class CompanyProfilesCompanion extends UpdateCompanion<CompanyProfile> {
  final Value<String> id;
  final Value<String?> companyName;
  final Value<String?> phone;
  final Value<String?> email;
  final Value<String?> licenseNumber;
  final Value<String?> defaultTechnicianName;
  final Value<String?> logoPath;
  final Value<String?> defaultDisclaimer;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const CompanyProfilesCompanion({
    this.id = const Value.absent(),
    this.companyName = const Value.absent(),
    this.phone = const Value.absent(),
    this.email = const Value.absent(),
    this.licenseNumber = const Value.absent(),
    this.defaultTechnicianName = const Value.absent(),
    this.logoPath = const Value.absent(),
    this.defaultDisclaimer = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CompanyProfilesCompanion.insert({
    required String id,
    this.companyName = const Value.absent(),
    this.phone = const Value.absent(),
    this.email = const Value.absent(),
    this.licenseNumber = const Value.absent(),
    this.defaultTechnicianName = const Value.absent(),
    this.logoPath = const Value.absent(),
    this.defaultDisclaimer = const Value.absent(),
    required DateTime updatedAt,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       updatedAt = Value(updatedAt);
  static Insertable<CompanyProfile> custom({
    Expression<String>? id,
    Expression<String>? companyName,
    Expression<String>? phone,
    Expression<String>? email,
    Expression<String>? licenseNumber,
    Expression<String>? defaultTechnicianName,
    Expression<String>? logoPath,
    Expression<String>? defaultDisclaimer,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (companyName != null) 'company_name': companyName,
      if (phone != null) 'phone': phone,
      if (email != null) 'email': email,
      if (licenseNumber != null) 'license_number': licenseNumber,
      if (defaultTechnicianName != null)
        'default_technician_name': defaultTechnicianName,
      if (logoPath != null) 'logo_path': logoPath,
      if (defaultDisclaimer != null) 'default_disclaimer': defaultDisclaimer,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CompanyProfilesCompanion copyWith({
    Value<String>? id,
    Value<String?>? companyName,
    Value<String?>? phone,
    Value<String?>? email,
    Value<String?>? licenseNumber,
    Value<String?>? defaultTechnicianName,
    Value<String?>? logoPath,
    Value<String?>? defaultDisclaimer,
    Value<DateTime>? updatedAt,
    Value<int>? rowid,
  }) {
    return CompanyProfilesCompanion(
      id: id ?? this.id,
      companyName: companyName ?? this.companyName,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      licenseNumber: licenseNumber ?? this.licenseNumber,
      defaultTechnicianName:
          defaultTechnicianName ?? this.defaultTechnicianName,
      logoPath: logoPath ?? this.logoPath,
      defaultDisclaimer: defaultDisclaimer ?? this.defaultDisclaimer,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (companyName.present) {
      map['company_name'] = Variable<String>(companyName.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (licenseNumber.present) {
      map['license_number'] = Variable<String>(licenseNumber.value);
    }
    if (defaultTechnicianName.present) {
      map['default_technician_name'] = Variable<String>(
        defaultTechnicianName.value,
      );
    }
    if (logoPath.present) {
      map['logo_path'] = Variable<String>(logoPath.value);
    }
    if (defaultDisclaimer.present) {
      map['default_disclaimer'] = Variable<String>(defaultDisclaimer.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CompanyProfilesCompanion(')
          ..write('id: $id, ')
          ..write('companyName: $companyName, ')
          ..write('phone: $phone, ')
          ..write('email: $email, ')
          ..write('licenseNumber: $licenseNumber, ')
          ..write('defaultTechnicianName: $defaultTechnicianName, ')
          ..write('logoPath: $logoPath, ')
          ..write('defaultDisclaimer: $defaultDisclaimer, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$TradeProofDatabase extends GeneratedDatabase {
  _$TradeProofDatabase(QueryExecutor e) : super(e);
  $TradeProofDatabaseManager get managers => $TradeProofDatabaseManager(this);
  late final $JobsTable jobs = $JobsTable(this);
  late final $CustomersTable customers = $CustomersTable(this);
  late final $JobPhotosTable jobPhotos = $JobPhotosTable(this);
  late final $JobNotesTable jobNotes = $JobNotesTable(this);
  late final $MaterialItemsTable materialItems = $MaterialItemsTable(this);
  late final $ChangeOrdersTable changeOrders = $ChangeOrdersTable(this);
  late final $SignatureRecordsTable signatureRecords = $SignatureRecordsTable(
    this,
  );
  late final $GeneratedReportsTable generatedReports = $GeneratedReportsTable(
    this,
  );
  late final $CompanyProfilesTable companyProfiles = $CompanyProfilesTable(
    this,
  );
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    jobs,
    customers,
    jobPhotos,
    jobNotes,
    materialItems,
    changeOrders,
    signatureRecords,
    generatedReports,
    companyProfiles,
  ];
}

typedef $$JobsTableCreateCompanionBuilder =
    JobsCompanion Function({
      required String id,
      Value<String?> customerId,
      required String title,
      required String tradeType,
      Value<String?> workOrderNumber,
      Value<String?> technicianName,
      required DateTime jobDate,
      required String status,
      Value<String?> summary,
      required DateTime createdAt,
      required DateTime updatedAt,
      Value<DateTime?> archivedAt,
      Value<int> rowid,
    });
typedef $$JobsTableUpdateCompanionBuilder =
    JobsCompanion Function({
      Value<String> id,
      Value<String?> customerId,
      Value<String> title,
      Value<String> tradeType,
      Value<String?> workOrderNumber,
      Value<String?> technicianName,
      Value<DateTime> jobDate,
      Value<String> status,
      Value<String?> summary,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime?> archivedAt,
      Value<int> rowid,
    });

final class $$JobsTableReferences
    extends BaseReferences<_$TradeProofDatabase, $JobsTable, Job> {
  $$JobsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$JobPhotosTable, List<JobPhoto>>
  _jobPhotosRefsTable(_$TradeProofDatabase db) => MultiTypedResultKey.fromTable(
    db.jobPhotos,
    aliasName: $_aliasNameGenerator(db.jobs.id, db.jobPhotos.jobId),
  );

  $$JobPhotosTableProcessedTableManager get jobPhotosRefs {
    final manager = $$JobPhotosTableTableManager(
      $_db,
      $_db.jobPhotos,
    ).filter((f) => f.jobId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_jobPhotosRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$JobNotesTable, List<JobNote>> _jobNotesRefsTable(
    _$TradeProofDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.jobNotes,
    aliasName: $_aliasNameGenerator(db.jobs.id, db.jobNotes.jobId),
  );

  $$JobNotesTableProcessedTableManager get jobNotesRefs {
    final manager = $$JobNotesTableTableManager(
      $_db,
      $_db.jobNotes,
    ).filter((f) => f.jobId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_jobNotesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$MaterialItemsTable, List<MaterialItem>>
  _materialItemsRefsTable(_$TradeProofDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.materialItems,
        aliasName: $_aliasNameGenerator(db.jobs.id, db.materialItems.jobId),
      );

  $$MaterialItemsTableProcessedTableManager get materialItemsRefs {
    final manager = $$MaterialItemsTableTableManager(
      $_db,
      $_db.materialItems,
    ).filter((f) => f.jobId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_materialItemsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$ChangeOrdersTable, List<ChangeOrder>>
  _changeOrdersRefsTable(_$TradeProofDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.changeOrders,
        aliasName: $_aliasNameGenerator(db.jobs.id, db.changeOrders.jobId),
      );

  $$ChangeOrdersTableProcessedTableManager get changeOrdersRefs {
    final manager = $$ChangeOrdersTableTableManager(
      $_db,
      $_db.changeOrders,
    ).filter((f) => f.jobId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_changeOrdersRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$SignatureRecordsTable, List<SignatureRecord>>
  _signatureRecordsRefsTable(_$TradeProofDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.signatureRecords,
        aliasName: $_aliasNameGenerator(db.jobs.id, db.signatureRecords.jobId),
      );

  $$SignatureRecordsTableProcessedTableManager get signatureRecordsRefs {
    final manager = $$SignatureRecordsTableTableManager(
      $_db,
      $_db.signatureRecords,
    ).filter((f) => f.jobId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _signatureRecordsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$GeneratedReportsTable, List<GeneratedReport>>
  _generatedReportsRefsTable(_$TradeProofDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.generatedReports,
        aliasName: $_aliasNameGenerator(db.jobs.id, db.generatedReports.jobId),
      );

  $$GeneratedReportsTableProcessedTableManager get generatedReportsRefs {
    final manager = $$GeneratedReportsTableTableManager(
      $_db,
      $_db.generatedReports,
    ).filter((f) => f.jobId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _generatedReportsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$JobsTableFilterComposer
    extends Composer<_$TradeProofDatabase, $JobsTable> {
  $$JobsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get customerId => $composableBuilder(
    column: $table.customerId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get tradeType => $composableBuilder(
    column: $table.tradeType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get workOrderNumber => $composableBuilder(
    column: $table.workOrderNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get technicianName => $composableBuilder(
    column: $table.technicianName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get jobDate => $composableBuilder(
    column: $table.jobDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get summary => $composableBuilder(
    column: $table.summary,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get archivedAt => $composableBuilder(
    column: $table.archivedAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> jobPhotosRefs(
    Expression<bool> Function($$JobPhotosTableFilterComposer f) f,
  ) {
    final $$JobPhotosTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.jobPhotos,
      getReferencedColumn: (t) => t.jobId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$JobPhotosTableFilterComposer(
            $db: $db,
            $table: $db.jobPhotos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> jobNotesRefs(
    Expression<bool> Function($$JobNotesTableFilterComposer f) f,
  ) {
    final $$JobNotesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.jobNotes,
      getReferencedColumn: (t) => t.jobId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$JobNotesTableFilterComposer(
            $db: $db,
            $table: $db.jobNotes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> materialItemsRefs(
    Expression<bool> Function($$MaterialItemsTableFilterComposer f) f,
  ) {
    final $$MaterialItemsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.materialItems,
      getReferencedColumn: (t) => t.jobId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MaterialItemsTableFilterComposer(
            $db: $db,
            $table: $db.materialItems,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> changeOrdersRefs(
    Expression<bool> Function($$ChangeOrdersTableFilterComposer f) f,
  ) {
    final $$ChangeOrdersTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.changeOrders,
      getReferencedColumn: (t) => t.jobId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ChangeOrdersTableFilterComposer(
            $db: $db,
            $table: $db.changeOrders,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> signatureRecordsRefs(
    Expression<bool> Function($$SignatureRecordsTableFilterComposer f) f,
  ) {
    final $$SignatureRecordsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.signatureRecords,
      getReferencedColumn: (t) => t.jobId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SignatureRecordsTableFilterComposer(
            $db: $db,
            $table: $db.signatureRecords,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> generatedReportsRefs(
    Expression<bool> Function($$GeneratedReportsTableFilterComposer f) f,
  ) {
    final $$GeneratedReportsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.generatedReports,
      getReferencedColumn: (t) => t.jobId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GeneratedReportsTableFilterComposer(
            $db: $db,
            $table: $db.generatedReports,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$JobsTableOrderingComposer
    extends Composer<_$TradeProofDatabase, $JobsTable> {
  $$JobsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get customerId => $composableBuilder(
    column: $table.customerId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tradeType => $composableBuilder(
    column: $table.tradeType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get workOrderNumber => $composableBuilder(
    column: $table.workOrderNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get technicianName => $composableBuilder(
    column: $table.technicianName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get jobDate => $composableBuilder(
    column: $table.jobDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get summary => $composableBuilder(
    column: $table.summary,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get archivedAt => $composableBuilder(
    column: $table.archivedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$JobsTableAnnotationComposer
    extends Composer<_$TradeProofDatabase, $JobsTable> {
  $$JobsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get customerId => $composableBuilder(
    column: $table.customerId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get tradeType =>
      $composableBuilder(column: $table.tradeType, builder: (column) => column);

  GeneratedColumn<String> get workOrderNumber => $composableBuilder(
    column: $table.workOrderNumber,
    builder: (column) => column,
  );

  GeneratedColumn<String> get technicianName => $composableBuilder(
    column: $table.technicianName,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get jobDate =>
      $composableBuilder(column: $table.jobDate, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get summary =>
      $composableBuilder(column: $table.summary, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get archivedAt => $composableBuilder(
    column: $table.archivedAt,
    builder: (column) => column,
  );

  Expression<T> jobPhotosRefs<T extends Object>(
    Expression<T> Function($$JobPhotosTableAnnotationComposer a) f,
  ) {
    final $$JobPhotosTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.jobPhotos,
      getReferencedColumn: (t) => t.jobId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$JobPhotosTableAnnotationComposer(
            $db: $db,
            $table: $db.jobPhotos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> jobNotesRefs<T extends Object>(
    Expression<T> Function($$JobNotesTableAnnotationComposer a) f,
  ) {
    final $$JobNotesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.jobNotes,
      getReferencedColumn: (t) => t.jobId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$JobNotesTableAnnotationComposer(
            $db: $db,
            $table: $db.jobNotes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> materialItemsRefs<T extends Object>(
    Expression<T> Function($$MaterialItemsTableAnnotationComposer a) f,
  ) {
    final $$MaterialItemsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.materialItems,
      getReferencedColumn: (t) => t.jobId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MaterialItemsTableAnnotationComposer(
            $db: $db,
            $table: $db.materialItems,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> changeOrdersRefs<T extends Object>(
    Expression<T> Function($$ChangeOrdersTableAnnotationComposer a) f,
  ) {
    final $$ChangeOrdersTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.changeOrders,
      getReferencedColumn: (t) => t.jobId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ChangeOrdersTableAnnotationComposer(
            $db: $db,
            $table: $db.changeOrders,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> signatureRecordsRefs<T extends Object>(
    Expression<T> Function($$SignatureRecordsTableAnnotationComposer a) f,
  ) {
    final $$SignatureRecordsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.signatureRecords,
      getReferencedColumn: (t) => t.jobId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SignatureRecordsTableAnnotationComposer(
            $db: $db,
            $table: $db.signatureRecords,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> generatedReportsRefs<T extends Object>(
    Expression<T> Function($$GeneratedReportsTableAnnotationComposer a) f,
  ) {
    final $$GeneratedReportsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.generatedReports,
      getReferencedColumn: (t) => t.jobId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$GeneratedReportsTableAnnotationComposer(
            $db: $db,
            $table: $db.generatedReports,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$JobsTableTableManager
    extends
        RootTableManager<
          _$TradeProofDatabase,
          $JobsTable,
          Job,
          $$JobsTableFilterComposer,
          $$JobsTableOrderingComposer,
          $$JobsTableAnnotationComposer,
          $$JobsTableCreateCompanionBuilder,
          $$JobsTableUpdateCompanionBuilder,
          (Job, $$JobsTableReferences),
          Job,
          PrefetchHooks Function({
            bool jobPhotosRefs,
            bool jobNotesRefs,
            bool materialItemsRefs,
            bool changeOrdersRefs,
            bool signatureRecordsRefs,
            bool generatedReportsRefs,
          })
        > {
  $$JobsTableTableManager(_$TradeProofDatabase db, $JobsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$JobsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$JobsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$JobsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String?> customerId = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> tradeType = const Value.absent(),
                Value<String?> workOrderNumber = const Value.absent(),
                Value<String?> technicianName = const Value.absent(),
                Value<DateTime> jobDate = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<String?> summary = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime?> archivedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => JobsCompanion(
                id: id,
                customerId: customerId,
                title: title,
                tradeType: tradeType,
                workOrderNumber: workOrderNumber,
                technicianName: technicianName,
                jobDate: jobDate,
                status: status,
                summary: summary,
                createdAt: createdAt,
                updatedAt: updatedAt,
                archivedAt: archivedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                Value<String?> customerId = const Value.absent(),
                required String title,
                required String tradeType,
                Value<String?> workOrderNumber = const Value.absent(),
                Value<String?> technicianName = const Value.absent(),
                required DateTime jobDate,
                required String status,
                Value<String?> summary = const Value.absent(),
                required DateTime createdAt,
                required DateTime updatedAt,
                Value<DateTime?> archivedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => JobsCompanion.insert(
                id: id,
                customerId: customerId,
                title: title,
                tradeType: tradeType,
                workOrderNumber: workOrderNumber,
                technicianName: technicianName,
                jobDate: jobDate,
                status: status,
                summary: summary,
                createdAt: createdAt,
                updatedAt: updatedAt,
                archivedAt: archivedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$JobsTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                jobPhotosRefs = false,
                jobNotesRefs = false,
                materialItemsRefs = false,
                changeOrdersRefs = false,
                signatureRecordsRefs = false,
                generatedReportsRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (jobPhotosRefs) db.jobPhotos,
                    if (jobNotesRefs) db.jobNotes,
                    if (materialItemsRefs) db.materialItems,
                    if (changeOrdersRefs) db.changeOrders,
                    if (signatureRecordsRefs) db.signatureRecords,
                    if (generatedReportsRefs) db.generatedReports,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (jobPhotosRefs)
                        await $_getPrefetchedData<Job, $JobsTable, JobPhoto>(
                          currentTable: table,
                          referencedTable: $$JobsTableReferences
                              ._jobPhotosRefsTable(db),
                          managerFromTypedResult: (p0) => $$JobsTableReferences(
                            db,
                            table,
                            p0,
                          ).jobPhotosRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.jobId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (jobNotesRefs)
                        await $_getPrefetchedData<Job, $JobsTable, JobNote>(
                          currentTable: table,
                          referencedTable: $$JobsTableReferences
                              ._jobNotesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$JobsTableReferences(db, table, p0).jobNotesRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.jobId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (materialItemsRefs)
                        await $_getPrefetchedData<
                          Job,
                          $JobsTable,
                          MaterialItem
                        >(
                          currentTable: table,
                          referencedTable: $$JobsTableReferences
                              ._materialItemsRefsTable(db),
                          managerFromTypedResult: (p0) => $$JobsTableReferences(
                            db,
                            table,
                            p0,
                          ).materialItemsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.jobId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (changeOrdersRefs)
                        await $_getPrefetchedData<Job, $JobsTable, ChangeOrder>(
                          currentTable: table,
                          referencedTable: $$JobsTableReferences
                              ._changeOrdersRefsTable(db),
                          managerFromTypedResult: (p0) => $$JobsTableReferences(
                            db,
                            table,
                            p0,
                          ).changeOrdersRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.jobId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (signatureRecordsRefs)
                        await $_getPrefetchedData<
                          Job,
                          $JobsTable,
                          SignatureRecord
                        >(
                          currentTable: table,
                          referencedTable: $$JobsTableReferences
                              ._signatureRecordsRefsTable(db),
                          managerFromTypedResult: (p0) => $$JobsTableReferences(
                            db,
                            table,
                            p0,
                          ).signatureRecordsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.jobId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (generatedReportsRefs)
                        await $_getPrefetchedData<
                          Job,
                          $JobsTable,
                          GeneratedReport
                        >(
                          currentTable: table,
                          referencedTable: $$JobsTableReferences
                              ._generatedReportsRefsTable(db),
                          managerFromTypedResult: (p0) => $$JobsTableReferences(
                            db,
                            table,
                            p0,
                          ).generatedReportsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.jobId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$JobsTableProcessedTableManager =
    ProcessedTableManager<
      _$TradeProofDatabase,
      $JobsTable,
      Job,
      $$JobsTableFilterComposer,
      $$JobsTableOrderingComposer,
      $$JobsTableAnnotationComposer,
      $$JobsTableCreateCompanionBuilder,
      $$JobsTableUpdateCompanionBuilder,
      (Job, $$JobsTableReferences),
      Job,
      PrefetchHooks Function({
        bool jobPhotosRefs,
        bool jobNotesRefs,
        bool materialItemsRefs,
        bool changeOrdersRefs,
        bool signatureRecordsRefs,
        bool generatedReportsRefs,
      })
    >;
typedef $$CustomersTableCreateCompanionBuilder =
    CustomersCompanion Function({
      required String id,
      required String name,
      Value<String?> phone,
      Value<String?> email,
      Value<String?> address,
      required DateTime createdAt,
      required DateTime updatedAt,
      Value<int> rowid,
    });
typedef $$CustomersTableUpdateCompanionBuilder =
    CustomersCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<String?> phone,
      Value<String?> email,
      Value<String?> address,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<int> rowid,
    });

class $$CustomersTableFilterComposer
    extends Composer<_$TradeProofDatabase, $CustomersTable> {
  $$CustomersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get address => $composableBuilder(
    column: $table.address,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CustomersTableOrderingComposer
    extends Composer<_$TradeProofDatabase, $CustomersTable> {
  $$CustomersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get address => $composableBuilder(
    column: $table.address,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CustomersTableAnnotationComposer
    extends Composer<_$TradeProofDatabase, $CustomersTable> {
  $$CustomersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get phone =>
      $composableBuilder(column: $table.phone, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$CustomersTableTableManager
    extends
        RootTableManager<
          _$TradeProofDatabase,
          $CustomersTable,
          Customer,
          $$CustomersTableFilterComposer,
          $$CustomersTableOrderingComposer,
          $$CustomersTableAnnotationComposer,
          $$CustomersTableCreateCompanionBuilder,
          $$CustomersTableUpdateCompanionBuilder,
          (
            Customer,
            BaseReferences<_$TradeProofDatabase, $CustomersTable, Customer>,
          ),
          Customer,
          PrefetchHooks Function()
        > {
  $$CustomersTableTableManager(_$TradeProofDatabase db, $CustomersTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CustomersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CustomersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CustomersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> phone = const Value.absent(),
                Value<String?> email = const Value.absent(),
                Value<String?> address = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CustomersCompanion(
                id: id,
                name: name,
                phone: phone,
                email: email,
                address: address,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                Value<String?> phone = const Value.absent(),
                Value<String?> email = const Value.absent(),
                Value<String?> address = const Value.absent(),
                required DateTime createdAt,
                required DateTime updatedAt,
                Value<int> rowid = const Value.absent(),
              }) => CustomersCompanion.insert(
                id: id,
                name: name,
                phone: phone,
                email: email,
                address: address,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CustomersTableProcessedTableManager =
    ProcessedTableManager<
      _$TradeProofDatabase,
      $CustomersTable,
      Customer,
      $$CustomersTableFilterComposer,
      $$CustomersTableOrderingComposer,
      $$CustomersTableAnnotationComposer,
      $$CustomersTableCreateCompanionBuilder,
      $$CustomersTableUpdateCompanionBuilder,
      (
        Customer,
        BaseReferences<_$TradeProofDatabase, $CustomersTable, Customer>,
      ),
      Customer,
      PrefetchHooks Function()
    >;
typedef $$JobPhotosTableCreateCompanionBuilder =
    JobPhotosCompanion Function({
      required String id,
      required String jobId,
      required String originalPath,
      Value<String?> markedUpPath,
      required String category,
      Value<String?> caption,
      Value<String> tagsJson,
      required DateTime capturedAt,
      Value<bool> includeInReport,
      required DateTime createdAt,
      required DateTime updatedAt,
      Value<int> rowid,
    });
typedef $$JobPhotosTableUpdateCompanionBuilder =
    JobPhotosCompanion Function({
      Value<String> id,
      Value<String> jobId,
      Value<String> originalPath,
      Value<String?> markedUpPath,
      Value<String> category,
      Value<String?> caption,
      Value<String> tagsJson,
      Value<DateTime> capturedAt,
      Value<bool> includeInReport,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<int> rowid,
    });

final class $$JobPhotosTableReferences
    extends BaseReferences<_$TradeProofDatabase, $JobPhotosTable, JobPhoto> {
  $$JobPhotosTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $JobsTable _jobIdTable(_$TradeProofDatabase db) =>
      db.jobs.createAlias($_aliasNameGenerator(db.jobPhotos.jobId, db.jobs.id));

  $$JobsTableProcessedTableManager get jobId {
    final $_column = $_itemColumn<String>('job_id')!;

    final manager = $$JobsTableTableManager(
      $_db,
      $_db.jobs,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_jobIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$JobPhotosTableFilterComposer
    extends Composer<_$TradeProofDatabase, $JobPhotosTable> {
  $$JobPhotosTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get originalPath => $composableBuilder(
    column: $table.originalPath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get markedUpPath => $composableBuilder(
    column: $table.markedUpPath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get caption => $composableBuilder(
    column: $table.caption,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get tagsJson => $composableBuilder(
    column: $table.tagsJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get capturedAt => $composableBuilder(
    column: $table.capturedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get includeInReport => $composableBuilder(
    column: $table.includeInReport,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$JobsTableFilterComposer get jobId {
    final $$JobsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.jobId,
      referencedTable: $db.jobs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$JobsTableFilterComposer(
            $db: $db,
            $table: $db.jobs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$JobPhotosTableOrderingComposer
    extends Composer<_$TradeProofDatabase, $JobPhotosTable> {
  $$JobPhotosTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get originalPath => $composableBuilder(
    column: $table.originalPath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get markedUpPath => $composableBuilder(
    column: $table.markedUpPath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get caption => $composableBuilder(
    column: $table.caption,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tagsJson => $composableBuilder(
    column: $table.tagsJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get capturedAt => $composableBuilder(
    column: $table.capturedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get includeInReport => $composableBuilder(
    column: $table.includeInReport,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$JobsTableOrderingComposer get jobId {
    final $$JobsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.jobId,
      referencedTable: $db.jobs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$JobsTableOrderingComposer(
            $db: $db,
            $table: $db.jobs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$JobPhotosTableAnnotationComposer
    extends Composer<_$TradeProofDatabase, $JobPhotosTable> {
  $$JobPhotosTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get originalPath => $composableBuilder(
    column: $table.originalPath,
    builder: (column) => column,
  );

  GeneratedColumn<String> get markedUpPath => $composableBuilder(
    column: $table.markedUpPath,
    builder: (column) => column,
  );

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);

  GeneratedColumn<String> get caption =>
      $composableBuilder(column: $table.caption, builder: (column) => column);

  GeneratedColumn<String> get tagsJson =>
      $composableBuilder(column: $table.tagsJson, builder: (column) => column);

  GeneratedColumn<DateTime> get capturedAt => $composableBuilder(
    column: $table.capturedAt,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get includeInReport => $composableBuilder(
    column: $table.includeInReport,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$JobsTableAnnotationComposer get jobId {
    final $$JobsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.jobId,
      referencedTable: $db.jobs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$JobsTableAnnotationComposer(
            $db: $db,
            $table: $db.jobs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$JobPhotosTableTableManager
    extends
        RootTableManager<
          _$TradeProofDatabase,
          $JobPhotosTable,
          JobPhoto,
          $$JobPhotosTableFilterComposer,
          $$JobPhotosTableOrderingComposer,
          $$JobPhotosTableAnnotationComposer,
          $$JobPhotosTableCreateCompanionBuilder,
          $$JobPhotosTableUpdateCompanionBuilder,
          (JobPhoto, $$JobPhotosTableReferences),
          JobPhoto,
          PrefetchHooks Function({bool jobId})
        > {
  $$JobPhotosTableTableManager(_$TradeProofDatabase db, $JobPhotosTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$JobPhotosTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$JobPhotosTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$JobPhotosTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> jobId = const Value.absent(),
                Value<String> originalPath = const Value.absent(),
                Value<String?> markedUpPath = const Value.absent(),
                Value<String> category = const Value.absent(),
                Value<String?> caption = const Value.absent(),
                Value<String> tagsJson = const Value.absent(),
                Value<DateTime> capturedAt = const Value.absent(),
                Value<bool> includeInReport = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => JobPhotosCompanion(
                id: id,
                jobId: jobId,
                originalPath: originalPath,
                markedUpPath: markedUpPath,
                category: category,
                caption: caption,
                tagsJson: tagsJson,
                capturedAt: capturedAt,
                includeInReport: includeInReport,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String jobId,
                required String originalPath,
                Value<String?> markedUpPath = const Value.absent(),
                required String category,
                Value<String?> caption = const Value.absent(),
                Value<String> tagsJson = const Value.absent(),
                required DateTime capturedAt,
                Value<bool> includeInReport = const Value.absent(),
                required DateTime createdAt,
                required DateTime updatedAt,
                Value<int> rowid = const Value.absent(),
              }) => JobPhotosCompanion.insert(
                id: id,
                jobId: jobId,
                originalPath: originalPath,
                markedUpPath: markedUpPath,
                category: category,
                caption: caption,
                tagsJson: tagsJson,
                capturedAt: capturedAt,
                includeInReport: includeInReport,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$JobPhotosTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({jobId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (jobId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.jobId,
                                referencedTable: $$JobPhotosTableReferences
                                    ._jobIdTable(db),
                                referencedColumn: $$JobPhotosTableReferences
                                    ._jobIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$JobPhotosTableProcessedTableManager =
    ProcessedTableManager<
      _$TradeProofDatabase,
      $JobPhotosTable,
      JobPhoto,
      $$JobPhotosTableFilterComposer,
      $$JobPhotosTableOrderingComposer,
      $$JobPhotosTableAnnotationComposer,
      $$JobPhotosTableCreateCompanionBuilder,
      $$JobPhotosTableUpdateCompanionBuilder,
      (JobPhoto, $$JobPhotosTableReferences),
      JobPhoto,
      PrefetchHooks Function({bool jobId})
    >;
typedef $$JobNotesTableCreateCompanionBuilder =
    JobNotesCompanion Function({
      required String id,
      required String jobId,
      required String body,
      Value<bool> visibleOnReport,
      required DateTime createdAt,
      required DateTime updatedAt,
      Value<int> rowid,
    });
typedef $$JobNotesTableUpdateCompanionBuilder =
    JobNotesCompanion Function({
      Value<String> id,
      Value<String> jobId,
      Value<String> body,
      Value<bool> visibleOnReport,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<int> rowid,
    });

final class $$JobNotesTableReferences
    extends BaseReferences<_$TradeProofDatabase, $JobNotesTable, JobNote> {
  $$JobNotesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $JobsTable _jobIdTable(_$TradeProofDatabase db) =>
      db.jobs.createAlias($_aliasNameGenerator(db.jobNotes.jobId, db.jobs.id));

  $$JobsTableProcessedTableManager get jobId {
    final $_column = $_itemColumn<String>('job_id')!;

    final manager = $$JobsTableTableManager(
      $_db,
      $_db.jobs,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_jobIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$JobNotesTableFilterComposer
    extends Composer<_$TradeProofDatabase, $JobNotesTable> {
  $$JobNotesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get body => $composableBuilder(
    column: $table.body,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get visibleOnReport => $composableBuilder(
    column: $table.visibleOnReport,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$JobsTableFilterComposer get jobId {
    final $$JobsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.jobId,
      referencedTable: $db.jobs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$JobsTableFilterComposer(
            $db: $db,
            $table: $db.jobs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$JobNotesTableOrderingComposer
    extends Composer<_$TradeProofDatabase, $JobNotesTable> {
  $$JobNotesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get body => $composableBuilder(
    column: $table.body,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get visibleOnReport => $composableBuilder(
    column: $table.visibleOnReport,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$JobsTableOrderingComposer get jobId {
    final $$JobsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.jobId,
      referencedTable: $db.jobs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$JobsTableOrderingComposer(
            $db: $db,
            $table: $db.jobs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$JobNotesTableAnnotationComposer
    extends Composer<_$TradeProofDatabase, $JobNotesTable> {
  $$JobNotesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get body =>
      $composableBuilder(column: $table.body, builder: (column) => column);

  GeneratedColumn<bool> get visibleOnReport => $composableBuilder(
    column: $table.visibleOnReport,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$JobsTableAnnotationComposer get jobId {
    final $$JobsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.jobId,
      referencedTable: $db.jobs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$JobsTableAnnotationComposer(
            $db: $db,
            $table: $db.jobs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$JobNotesTableTableManager
    extends
        RootTableManager<
          _$TradeProofDatabase,
          $JobNotesTable,
          JobNote,
          $$JobNotesTableFilterComposer,
          $$JobNotesTableOrderingComposer,
          $$JobNotesTableAnnotationComposer,
          $$JobNotesTableCreateCompanionBuilder,
          $$JobNotesTableUpdateCompanionBuilder,
          (JobNote, $$JobNotesTableReferences),
          JobNote,
          PrefetchHooks Function({bool jobId})
        > {
  $$JobNotesTableTableManager(_$TradeProofDatabase db, $JobNotesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$JobNotesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$JobNotesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$JobNotesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> jobId = const Value.absent(),
                Value<String> body = const Value.absent(),
                Value<bool> visibleOnReport = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => JobNotesCompanion(
                id: id,
                jobId: jobId,
                body: body,
                visibleOnReport: visibleOnReport,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String jobId,
                required String body,
                Value<bool> visibleOnReport = const Value.absent(),
                required DateTime createdAt,
                required DateTime updatedAt,
                Value<int> rowid = const Value.absent(),
              }) => JobNotesCompanion.insert(
                id: id,
                jobId: jobId,
                body: body,
                visibleOnReport: visibleOnReport,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$JobNotesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({jobId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (jobId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.jobId,
                                referencedTable: $$JobNotesTableReferences
                                    ._jobIdTable(db),
                                referencedColumn: $$JobNotesTableReferences
                                    ._jobIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$JobNotesTableProcessedTableManager =
    ProcessedTableManager<
      _$TradeProofDatabase,
      $JobNotesTable,
      JobNote,
      $$JobNotesTableFilterComposer,
      $$JobNotesTableOrderingComposer,
      $$JobNotesTableAnnotationComposer,
      $$JobNotesTableCreateCompanionBuilder,
      $$JobNotesTableUpdateCompanionBuilder,
      (JobNote, $$JobNotesTableReferences),
      JobNote,
      PrefetchHooks Function({bool jobId})
    >;
typedef $$MaterialItemsTableCreateCompanionBuilder =
    MaterialItemsCompanion Function({
      required String id,
      required String jobId,
      required String name,
      required double quantity,
      required String unit,
      Value<double?> unitCost,
      Value<bool> includeOnReport,
      required DateTime createdAt,
      required DateTime updatedAt,
      Value<int> rowid,
    });
typedef $$MaterialItemsTableUpdateCompanionBuilder =
    MaterialItemsCompanion Function({
      Value<String> id,
      Value<String> jobId,
      Value<String> name,
      Value<double> quantity,
      Value<String> unit,
      Value<double?> unitCost,
      Value<bool> includeOnReport,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<int> rowid,
    });

final class $$MaterialItemsTableReferences
    extends
        BaseReferences<
          _$TradeProofDatabase,
          $MaterialItemsTable,
          MaterialItem
        > {
  $$MaterialItemsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $JobsTable _jobIdTable(_$TradeProofDatabase db) => db.jobs.createAlias(
    $_aliasNameGenerator(db.materialItems.jobId, db.jobs.id),
  );

  $$JobsTableProcessedTableManager get jobId {
    final $_column = $_itemColumn<String>('job_id')!;

    final manager = $$JobsTableTableManager(
      $_db,
      $_db.jobs,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_jobIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$MaterialItemsTableFilterComposer
    extends Composer<_$TradeProofDatabase, $MaterialItemsTable> {
  $$MaterialItemsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get unit => $composableBuilder(
    column: $table.unit,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get unitCost => $composableBuilder(
    column: $table.unitCost,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get includeOnReport => $composableBuilder(
    column: $table.includeOnReport,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$JobsTableFilterComposer get jobId {
    final $$JobsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.jobId,
      referencedTable: $db.jobs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$JobsTableFilterComposer(
            $db: $db,
            $table: $db.jobs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$MaterialItemsTableOrderingComposer
    extends Composer<_$TradeProofDatabase, $MaterialItemsTable> {
  $$MaterialItemsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get quantity => $composableBuilder(
    column: $table.quantity,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get unit => $composableBuilder(
    column: $table.unit,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get unitCost => $composableBuilder(
    column: $table.unitCost,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get includeOnReport => $composableBuilder(
    column: $table.includeOnReport,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$JobsTableOrderingComposer get jobId {
    final $$JobsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.jobId,
      referencedTable: $db.jobs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$JobsTableOrderingComposer(
            $db: $db,
            $table: $db.jobs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$MaterialItemsTableAnnotationComposer
    extends Composer<_$TradeProofDatabase, $MaterialItemsTable> {
  $$MaterialItemsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<double> get quantity =>
      $composableBuilder(column: $table.quantity, builder: (column) => column);

  GeneratedColumn<String> get unit =>
      $composableBuilder(column: $table.unit, builder: (column) => column);

  GeneratedColumn<double> get unitCost =>
      $composableBuilder(column: $table.unitCost, builder: (column) => column);

  GeneratedColumn<bool> get includeOnReport => $composableBuilder(
    column: $table.includeOnReport,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$JobsTableAnnotationComposer get jobId {
    final $$JobsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.jobId,
      referencedTable: $db.jobs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$JobsTableAnnotationComposer(
            $db: $db,
            $table: $db.jobs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$MaterialItemsTableTableManager
    extends
        RootTableManager<
          _$TradeProofDatabase,
          $MaterialItemsTable,
          MaterialItem,
          $$MaterialItemsTableFilterComposer,
          $$MaterialItemsTableOrderingComposer,
          $$MaterialItemsTableAnnotationComposer,
          $$MaterialItemsTableCreateCompanionBuilder,
          $$MaterialItemsTableUpdateCompanionBuilder,
          (MaterialItem, $$MaterialItemsTableReferences),
          MaterialItem,
          PrefetchHooks Function({bool jobId})
        > {
  $$MaterialItemsTableTableManager(
    _$TradeProofDatabase db,
    $MaterialItemsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MaterialItemsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MaterialItemsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MaterialItemsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> jobId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<double> quantity = const Value.absent(),
                Value<String> unit = const Value.absent(),
                Value<double?> unitCost = const Value.absent(),
                Value<bool> includeOnReport = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => MaterialItemsCompanion(
                id: id,
                jobId: jobId,
                name: name,
                quantity: quantity,
                unit: unit,
                unitCost: unitCost,
                includeOnReport: includeOnReport,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String jobId,
                required String name,
                required double quantity,
                required String unit,
                Value<double?> unitCost = const Value.absent(),
                Value<bool> includeOnReport = const Value.absent(),
                required DateTime createdAt,
                required DateTime updatedAt,
                Value<int> rowid = const Value.absent(),
              }) => MaterialItemsCompanion.insert(
                id: id,
                jobId: jobId,
                name: name,
                quantity: quantity,
                unit: unit,
                unitCost: unitCost,
                includeOnReport: includeOnReport,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$MaterialItemsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({jobId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (jobId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.jobId,
                                referencedTable: $$MaterialItemsTableReferences
                                    ._jobIdTable(db),
                                referencedColumn: $$MaterialItemsTableReferences
                                    ._jobIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$MaterialItemsTableProcessedTableManager =
    ProcessedTableManager<
      _$TradeProofDatabase,
      $MaterialItemsTable,
      MaterialItem,
      $$MaterialItemsTableFilterComposer,
      $$MaterialItemsTableOrderingComposer,
      $$MaterialItemsTableAnnotationComposer,
      $$MaterialItemsTableCreateCompanionBuilder,
      $$MaterialItemsTableUpdateCompanionBuilder,
      (MaterialItem, $$MaterialItemsTableReferences),
      MaterialItem,
      PrefetchHooks Function({bool jobId})
    >;
typedef $$ChangeOrdersTableCreateCompanionBuilder =
    ChangeOrdersCompanion Function({
      required String id,
      required String jobId,
      required String title,
      Value<String?> reason,
      Value<String?> description,
      Value<double> laborCost,
      Value<double> materialCost,
      Value<double> otherCost,
      Value<String> attachedPhotoIdsJson,
      required String status,
      Value<String?> approvalSignatureId,
      required DateTime createdAt,
      required DateTime updatedAt,
      Value<int> rowid,
    });
typedef $$ChangeOrdersTableUpdateCompanionBuilder =
    ChangeOrdersCompanion Function({
      Value<String> id,
      Value<String> jobId,
      Value<String> title,
      Value<String?> reason,
      Value<String?> description,
      Value<double> laborCost,
      Value<double> materialCost,
      Value<double> otherCost,
      Value<String> attachedPhotoIdsJson,
      Value<String> status,
      Value<String?> approvalSignatureId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<int> rowid,
    });

final class $$ChangeOrdersTableReferences
    extends
        BaseReferences<_$TradeProofDatabase, $ChangeOrdersTable, ChangeOrder> {
  $$ChangeOrdersTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $JobsTable _jobIdTable(_$TradeProofDatabase db) => db.jobs.createAlias(
    $_aliasNameGenerator(db.changeOrders.jobId, db.jobs.id),
  );

  $$JobsTableProcessedTableManager get jobId {
    final $_column = $_itemColumn<String>('job_id')!;

    final manager = $$JobsTableTableManager(
      $_db,
      $_db.jobs,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_jobIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$ChangeOrdersTableFilterComposer
    extends Composer<_$TradeProofDatabase, $ChangeOrdersTable> {
  $$ChangeOrdersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get reason => $composableBuilder(
    column: $table.reason,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get laborCost => $composableBuilder(
    column: $table.laborCost,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get materialCost => $composableBuilder(
    column: $table.materialCost,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get otherCost => $composableBuilder(
    column: $table.otherCost,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get attachedPhotoIdsJson => $composableBuilder(
    column: $table.attachedPhotoIdsJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get approvalSignatureId => $composableBuilder(
    column: $table.approvalSignatureId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$JobsTableFilterComposer get jobId {
    final $$JobsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.jobId,
      referencedTable: $db.jobs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$JobsTableFilterComposer(
            $db: $db,
            $table: $db.jobs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ChangeOrdersTableOrderingComposer
    extends Composer<_$TradeProofDatabase, $ChangeOrdersTable> {
  $$ChangeOrdersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get reason => $composableBuilder(
    column: $table.reason,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get laborCost => $composableBuilder(
    column: $table.laborCost,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get materialCost => $composableBuilder(
    column: $table.materialCost,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get otherCost => $composableBuilder(
    column: $table.otherCost,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get attachedPhotoIdsJson => $composableBuilder(
    column: $table.attachedPhotoIdsJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get approvalSignatureId => $composableBuilder(
    column: $table.approvalSignatureId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$JobsTableOrderingComposer get jobId {
    final $$JobsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.jobId,
      referencedTable: $db.jobs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$JobsTableOrderingComposer(
            $db: $db,
            $table: $db.jobs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ChangeOrdersTableAnnotationComposer
    extends Composer<_$TradeProofDatabase, $ChangeOrdersTable> {
  $$ChangeOrdersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get reason =>
      $composableBuilder(column: $table.reason, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<double> get laborCost =>
      $composableBuilder(column: $table.laborCost, builder: (column) => column);

  GeneratedColumn<double> get materialCost => $composableBuilder(
    column: $table.materialCost,
    builder: (column) => column,
  );

  GeneratedColumn<double> get otherCost =>
      $composableBuilder(column: $table.otherCost, builder: (column) => column);

  GeneratedColumn<String> get attachedPhotoIdsJson => $composableBuilder(
    column: $table.attachedPhotoIdsJson,
    builder: (column) => column,
  );

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get approvalSignatureId => $composableBuilder(
    column: $table.approvalSignatureId,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$JobsTableAnnotationComposer get jobId {
    final $$JobsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.jobId,
      referencedTable: $db.jobs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$JobsTableAnnotationComposer(
            $db: $db,
            $table: $db.jobs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ChangeOrdersTableTableManager
    extends
        RootTableManager<
          _$TradeProofDatabase,
          $ChangeOrdersTable,
          ChangeOrder,
          $$ChangeOrdersTableFilterComposer,
          $$ChangeOrdersTableOrderingComposer,
          $$ChangeOrdersTableAnnotationComposer,
          $$ChangeOrdersTableCreateCompanionBuilder,
          $$ChangeOrdersTableUpdateCompanionBuilder,
          (ChangeOrder, $$ChangeOrdersTableReferences),
          ChangeOrder,
          PrefetchHooks Function({bool jobId})
        > {
  $$ChangeOrdersTableTableManager(
    _$TradeProofDatabase db,
    $ChangeOrdersTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ChangeOrdersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ChangeOrdersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ChangeOrdersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> jobId = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String?> reason = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<double> laborCost = const Value.absent(),
                Value<double> materialCost = const Value.absent(),
                Value<double> otherCost = const Value.absent(),
                Value<String> attachedPhotoIdsJson = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<String?> approvalSignatureId = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ChangeOrdersCompanion(
                id: id,
                jobId: jobId,
                title: title,
                reason: reason,
                description: description,
                laborCost: laborCost,
                materialCost: materialCost,
                otherCost: otherCost,
                attachedPhotoIdsJson: attachedPhotoIdsJson,
                status: status,
                approvalSignatureId: approvalSignatureId,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String jobId,
                required String title,
                Value<String?> reason = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<double> laborCost = const Value.absent(),
                Value<double> materialCost = const Value.absent(),
                Value<double> otherCost = const Value.absent(),
                Value<String> attachedPhotoIdsJson = const Value.absent(),
                required String status,
                Value<String?> approvalSignatureId = const Value.absent(),
                required DateTime createdAt,
                required DateTime updatedAt,
                Value<int> rowid = const Value.absent(),
              }) => ChangeOrdersCompanion.insert(
                id: id,
                jobId: jobId,
                title: title,
                reason: reason,
                description: description,
                laborCost: laborCost,
                materialCost: materialCost,
                otherCost: otherCost,
                attachedPhotoIdsJson: attachedPhotoIdsJson,
                status: status,
                approvalSignatureId: approvalSignatureId,
                createdAt: createdAt,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ChangeOrdersTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({jobId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (jobId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.jobId,
                                referencedTable: $$ChangeOrdersTableReferences
                                    ._jobIdTable(db),
                                referencedColumn: $$ChangeOrdersTableReferences
                                    ._jobIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$ChangeOrdersTableProcessedTableManager =
    ProcessedTableManager<
      _$TradeProofDatabase,
      $ChangeOrdersTable,
      ChangeOrder,
      $$ChangeOrdersTableFilterComposer,
      $$ChangeOrdersTableOrderingComposer,
      $$ChangeOrdersTableAnnotationComposer,
      $$ChangeOrdersTableCreateCompanionBuilder,
      $$ChangeOrdersTableUpdateCompanionBuilder,
      (ChangeOrder, $$ChangeOrdersTableReferences),
      ChangeOrder,
      PrefetchHooks Function({bool jobId})
    >;
typedef $$SignatureRecordsTableCreateCompanionBuilder =
    SignatureRecordsCompanion Function({
      required String id,
      required String jobId,
      required String type,
      required String signerName,
      required String filePath,
      required DateTime signedAt,
      Value<int> rowid,
    });
typedef $$SignatureRecordsTableUpdateCompanionBuilder =
    SignatureRecordsCompanion Function({
      Value<String> id,
      Value<String> jobId,
      Value<String> type,
      Value<String> signerName,
      Value<String> filePath,
      Value<DateTime> signedAt,
      Value<int> rowid,
    });

final class $$SignatureRecordsTableReferences
    extends
        BaseReferences<
          _$TradeProofDatabase,
          $SignatureRecordsTable,
          SignatureRecord
        > {
  $$SignatureRecordsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $JobsTable _jobIdTable(_$TradeProofDatabase db) => db.jobs.createAlias(
    $_aliasNameGenerator(db.signatureRecords.jobId, db.jobs.id),
  );

  $$JobsTableProcessedTableManager get jobId {
    final $_column = $_itemColumn<String>('job_id')!;

    final manager = $$JobsTableTableManager(
      $_db,
      $_db.jobs,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_jobIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$SignatureRecordsTableFilterComposer
    extends Composer<_$TradeProofDatabase, $SignatureRecordsTable> {
  $$SignatureRecordsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get signerName => $composableBuilder(
    column: $table.signerName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get filePath => $composableBuilder(
    column: $table.filePath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get signedAt => $composableBuilder(
    column: $table.signedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$JobsTableFilterComposer get jobId {
    final $$JobsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.jobId,
      referencedTable: $db.jobs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$JobsTableFilterComposer(
            $db: $db,
            $table: $db.jobs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SignatureRecordsTableOrderingComposer
    extends Composer<_$TradeProofDatabase, $SignatureRecordsTable> {
  $$SignatureRecordsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get signerName => $composableBuilder(
    column: $table.signerName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get filePath => $composableBuilder(
    column: $table.filePath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get signedAt => $composableBuilder(
    column: $table.signedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$JobsTableOrderingComposer get jobId {
    final $$JobsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.jobId,
      referencedTable: $db.jobs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$JobsTableOrderingComposer(
            $db: $db,
            $table: $db.jobs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SignatureRecordsTableAnnotationComposer
    extends Composer<_$TradeProofDatabase, $SignatureRecordsTable> {
  $$SignatureRecordsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get signerName => $composableBuilder(
    column: $table.signerName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get filePath =>
      $composableBuilder(column: $table.filePath, builder: (column) => column);

  GeneratedColumn<DateTime> get signedAt =>
      $composableBuilder(column: $table.signedAt, builder: (column) => column);

  $$JobsTableAnnotationComposer get jobId {
    final $$JobsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.jobId,
      referencedTable: $db.jobs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$JobsTableAnnotationComposer(
            $db: $db,
            $table: $db.jobs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SignatureRecordsTableTableManager
    extends
        RootTableManager<
          _$TradeProofDatabase,
          $SignatureRecordsTable,
          SignatureRecord,
          $$SignatureRecordsTableFilterComposer,
          $$SignatureRecordsTableOrderingComposer,
          $$SignatureRecordsTableAnnotationComposer,
          $$SignatureRecordsTableCreateCompanionBuilder,
          $$SignatureRecordsTableUpdateCompanionBuilder,
          (SignatureRecord, $$SignatureRecordsTableReferences),
          SignatureRecord,
          PrefetchHooks Function({bool jobId})
        > {
  $$SignatureRecordsTableTableManager(
    _$TradeProofDatabase db,
    $SignatureRecordsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SignatureRecordsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SignatureRecordsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SignatureRecordsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> jobId = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<String> signerName = const Value.absent(),
                Value<String> filePath = const Value.absent(),
                Value<DateTime> signedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SignatureRecordsCompanion(
                id: id,
                jobId: jobId,
                type: type,
                signerName: signerName,
                filePath: filePath,
                signedAt: signedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String jobId,
                required String type,
                required String signerName,
                required String filePath,
                required DateTime signedAt,
                Value<int> rowid = const Value.absent(),
              }) => SignatureRecordsCompanion.insert(
                id: id,
                jobId: jobId,
                type: type,
                signerName: signerName,
                filePath: filePath,
                signedAt: signedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$SignatureRecordsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({jobId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (jobId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.jobId,
                                referencedTable:
                                    $$SignatureRecordsTableReferences
                                        ._jobIdTable(db),
                                referencedColumn:
                                    $$SignatureRecordsTableReferences
                                        ._jobIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$SignatureRecordsTableProcessedTableManager =
    ProcessedTableManager<
      _$TradeProofDatabase,
      $SignatureRecordsTable,
      SignatureRecord,
      $$SignatureRecordsTableFilterComposer,
      $$SignatureRecordsTableOrderingComposer,
      $$SignatureRecordsTableAnnotationComposer,
      $$SignatureRecordsTableCreateCompanionBuilder,
      $$SignatureRecordsTableUpdateCompanionBuilder,
      (SignatureRecord, $$SignatureRecordsTableReferences),
      SignatureRecord,
      PrefetchHooks Function({bool jobId})
    >;
typedef $$GeneratedReportsTableCreateCompanionBuilder =
    GeneratedReportsCompanion Function({
      required String id,
      required String jobId,
      required String filePath,
      required String reportType,
      required String template,
      required String title,
      required DateTime createdAt,
      Value<int> rowid,
    });
typedef $$GeneratedReportsTableUpdateCompanionBuilder =
    GeneratedReportsCompanion Function({
      Value<String> id,
      Value<String> jobId,
      Value<String> filePath,
      Value<String> reportType,
      Value<String> template,
      Value<String> title,
      Value<DateTime> createdAt,
      Value<int> rowid,
    });

final class $$GeneratedReportsTableReferences
    extends
        BaseReferences<
          _$TradeProofDatabase,
          $GeneratedReportsTable,
          GeneratedReport
        > {
  $$GeneratedReportsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $JobsTable _jobIdTable(_$TradeProofDatabase db) => db.jobs.createAlias(
    $_aliasNameGenerator(db.generatedReports.jobId, db.jobs.id),
  );

  $$JobsTableProcessedTableManager get jobId {
    final $_column = $_itemColumn<String>('job_id')!;

    final manager = $$JobsTableTableManager(
      $_db,
      $_db.jobs,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_jobIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$GeneratedReportsTableFilterComposer
    extends Composer<_$TradeProofDatabase, $GeneratedReportsTable> {
  $$GeneratedReportsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get filePath => $composableBuilder(
    column: $table.filePath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get reportType => $composableBuilder(
    column: $table.reportType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get template => $composableBuilder(
    column: $table.template,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$JobsTableFilterComposer get jobId {
    final $$JobsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.jobId,
      referencedTable: $db.jobs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$JobsTableFilterComposer(
            $db: $db,
            $table: $db.jobs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$GeneratedReportsTableOrderingComposer
    extends Composer<_$TradeProofDatabase, $GeneratedReportsTable> {
  $$GeneratedReportsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get filePath => $composableBuilder(
    column: $table.filePath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get reportType => $composableBuilder(
    column: $table.reportType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get template => $composableBuilder(
    column: $table.template,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$JobsTableOrderingComposer get jobId {
    final $$JobsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.jobId,
      referencedTable: $db.jobs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$JobsTableOrderingComposer(
            $db: $db,
            $table: $db.jobs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$GeneratedReportsTableAnnotationComposer
    extends Composer<_$TradeProofDatabase, $GeneratedReportsTable> {
  $$GeneratedReportsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get filePath =>
      $composableBuilder(column: $table.filePath, builder: (column) => column);

  GeneratedColumn<String> get reportType => $composableBuilder(
    column: $table.reportType,
    builder: (column) => column,
  );

  GeneratedColumn<String> get template =>
      $composableBuilder(column: $table.template, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$JobsTableAnnotationComposer get jobId {
    final $$JobsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.jobId,
      referencedTable: $db.jobs,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$JobsTableAnnotationComposer(
            $db: $db,
            $table: $db.jobs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$GeneratedReportsTableTableManager
    extends
        RootTableManager<
          _$TradeProofDatabase,
          $GeneratedReportsTable,
          GeneratedReport,
          $$GeneratedReportsTableFilterComposer,
          $$GeneratedReportsTableOrderingComposer,
          $$GeneratedReportsTableAnnotationComposer,
          $$GeneratedReportsTableCreateCompanionBuilder,
          $$GeneratedReportsTableUpdateCompanionBuilder,
          (GeneratedReport, $$GeneratedReportsTableReferences),
          GeneratedReport,
          PrefetchHooks Function({bool jobId})
        > {
  $$GeneratedReportsTableTableManager(
    _$TradeProofDatabase db,
    $GeneratedReportsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GeneratedReportsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GeneratedReportsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GeneratedReportsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> jobId = const Value.absent(),
                Value<String> filePath = const Value.absent(),
                Value<String> reportType = const Value.absent(),
                Value<String> template = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => GeneratedReportsCompanion(
                id: id,
                jobId: jobId,
                filePath: filePath,
                reportType: reportType,
                template: template,
                title: title,
                createdAt: createdAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String jobId,
                required String filePath,
                required String reportType,
                required String template,
                required String title,
                required DateTime createdAt,
                Value<int> rowid = const Value.absent(),
              }) => GeneratedReportsCompanion.insert(
                id: id,
                jobId: jobId,
                filePath: filePath,
                reportType: reportType,
                template: template,
                title: title,
                createdAt: createdAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$GeneratedReportsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({jobId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (jobId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.jobId,
                                referencedTable:
                                    $$GeneratedReportsTableReferences
                                        ._jobIdTable(db),
                                referencedColumn:
                                    $$GeneratedReportsTableReferences
                                        ._jobIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$GeneratedReportsTableProcessedTableManager =
    ProcessedTableManager<
      _$TradeProofDatabase,
      $GeneratedReportsTable,
      GeneratedReport,
      $$GeneratedReportsTableFilterComposer,
      $$GeneratedReportsTableOrderingComposer,
      $$GeneratedReportsTableAnnotationComposer,
      $$GeneratedReportsTableCreateCompanionBuilder,
      $$GeneratedReportsTableUpdateCompanionBuilder,
      (GeneratedReport, $$GeneratedReportsTableReferences),
      GeneratedReport,
      PrefetchHooks Function({bool jobId})
    >;
typedef $$CompanyProfilesTableCreateCompanionBuilder =
    CompanyProfilesCompanion Function({
      required String id,
      Value<String?> companyName,
      Value<String?> phone,
      Value<String?> email,
      Value<String?> licenseNumber,
      Value<String?> defaultTechnicianName,
      Value<String?> logoPath,
      Value<String?> defaultDisclaimer,
      required DateTime updatedAt,
      Value<int> rowid,
    });
typedef $$CompanyProfilesTableUpdateCompanionBuilder =
    CompanyProfilesCompanion Function({
      Value<String> id,
      Value<String?> companyName,
      Value<String?> phone,
      Value<String?> email,
      Value<String?> licenseNumber,
      Value<String?> defaultTechnicianName,
      Value<String?> logoPath,
      Value<String?> defaultDisclaimer,
      Value<DateTime> updatedAt,
      Value<int> rowid,
    });

class $$CompanyProfilesTableFilterComposer
    extends Composer<_$TradeProofDatabase, $CompanyProfilesTable> {
  $$CompanyProfilesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get companyName => $composableBuilder(
    column: $table.companyName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get licenseNumber => $composableBuilder(
    column: $table.licenseNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get defaultTechnicianName => $composableBuilder(
    column: $table.defaultTechnicianName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get logoPath => $composableBuilder(
    column: $table.logoPath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get defaultDisclaimer => $composableBuilder(
    column: $table.defaultDisclaimer,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CompanyProfilesTableOrderingComposer
    extends Composer<_$TradeProofDatabase, $CompanyProfilesTable> {
  $$CompanyProfilesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get companyName => $composableBuilder(
    column: $table.companyName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get phone => $composableBuilder(
    column: $table.phone,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get licenseNumber => $composableBuilder(
    column: $table.licenseNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get defaultTechnicianName => $composableBuilder(
    column: $table.defaultTechnicianName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get logoPath => $composableBuilder(
    column: $table.logoPath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get defaultDisclaimer => $composableBuilder(
    column: $table.defaultDisclaimer,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CompanyProfilesTableAnnotationComposer
    extends Composer<_$TradeProofDatabase, $CompanyProfilesTable> {
  $$CompanyProfilesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get companyName => $composableBuilder(
    column: $table.companyName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get phone =>
      $composableBuilder(column: $table.phone, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get licenseNumber => $composableBuilder(
    column: $table.licenseNumber,
    builder: (column) => column,
  );

  GeneratedColumn<String> get defaultTechnicianName => $composableBuilder(
    column: $table.defaultTechnicianName,
    builder: (column) => column,
  );

  GeneratedColumn<String> get logoPath =>
      $composableBuilder(column: $table.logoPath, builder: (column) => column);

  GeneratedColumn<String> get defaultDisclaimer => $composableBuilder(
    column: $table.defaultDisclaimer,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$CompanyProfilesTableTableManager
    extends
        RootTableManager<
          _$TradeProofDatabase,
          $CompanyProfilesTable,
          CompanyProfile,
          $$CompanyProfilesTableFilterComposer,
          $$CompanyProfilesTableOrderingComposer,
          $$CompanyProfilesTableAnnotationComposer,
          $$CompanyProfilesTableCreateCompanionBuilder,
          $$CompanyProfilesTableUpdateCompanionBuilder,
          (
            CompanyProfile,
            BaseReferences<
              _$TradeProofDatabase,
              $CompanyProfilesTable,
              CompanyProfile
            >,
          ),
          CompanyProfile,
          PrefetchHooks Function()
        > {
  $$CompanyProfilesTableTableManager(
    _$TradeProofDatabase db,
    $CompanyProfilesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CompanyProfilesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CompanyProfilesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CompanyProfilesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String?> companyName = const Value.absent(),
                Value<String?> phone = const Value.absent(),
                Value<String?> email = const Value.absent(),
                Value<String?> licenseNumber = const Value.absent(),
                Value<String?> defaultTechnicianName = const Value.absent(),
                Value<String?> logoPath = const Value.absent(),
                Value<String?> defaultDisclaimer = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CompanyProfilesCompanion(
                id: id,
                companyName: companyName,
                phone: phone,
                email: email,
                licenseNumber: licenseNumber,
                defaultTechnicianName: defaultTechnicianName,
                logoPath: logoPath,
                defaultDisclaimer: defaultDisclaimer,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                Value<String?> companyName = const Value.absent(),
                Value<String?> phone = const Value.absent(),
                Value<String?> email = const Value.absent(),
                Value<String?> licenseNumber = const Value.absent(),
                Value<String?> defaultTechnicianName = const Value.absent(),
                Value<String?> logoPath = const Value.absent(),
                Value<String?> defaultDisclaimer = const Value.absent(),
                required DateTime updatedAt,
                Value<int> rowid = const Value.absent(),
              }) => CompanyProfilesCompanion.insert(
                id: id,
                companyName: companyName,
                phone: phone,
                email: email,
                licenseNumber: licenseNumber,
                defaultTechnicianName: defaultTechnicianName,
                logoPath: logoPath,
                defaultDisclaimer: defaultDisclaimer,
                updatedAt: updatedAt,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CompanyProfilesTableProcessedTableManager =
    ProcessedTableManager<
      _$TradeProofDatabase,
      $CompanyProfilesTable,
      CompanyProfile,
      $$CompanyProfilesTableFilterComposer,
      $$CompanyProfilesTableOrderingComposer,
      $$CompanyProfilesTableAnnotationComposer,
      $$CompanyProfilesTableCreateCompanionBuilder,
      $$CompanyProfilesTableUpdateCompanionBuilder,
      (
        CompanyProfile,
        BaseReferences<
          _$TradeProofDatabase,
          $CompanyProfilesTable,
          CompanyProfile
        >,
      ),
      CompanyProfile,
      PrefetchHooks Function()
    >;

class $TradeProofDatabaseManager {
  final _$TradeProofDatabase _db;
  $TradeProofDatabaseManager(this._db);
  $$JobsTableTableManager get jobs => $$JobsTableTableManager(_db, _db.jobs);
  $$CustomersTableTableManager get customers =>
      $$CustomersTableTableManager(_db, _db.customers);
  $$JobPhotosTableTableManager get jobPhotos =>
      $$JobPhotosTableTableManager(_db, _db.jobPhotos);
  $$JobNotesTableTableManager get jobNotes =>
      $$JobNotesTableTableManager(_db, _db.jobNotes);
  $$MaterialItemsTableTableManager get materialItems =>
      $$MaterialItemsTableTableManager(_db, _db.materialItems);
  $$ChangeOrdersTableTableManager get changeOrders =>
      $$ChangeOrdersTableTableManager(_db, _db.changeOrders);
  $$SignatureRecordsTableTableManager get signatureRecords =>
      $$SignatureRecordsTableTableManager(_db, _db.signatureRecords);
  $$GeneratedReportsTableTableManager get generatedReports =>
      $$GeneratedReportsTableTableManager(_db, _db.generatedReports);
  $$CompanyProfilesTableTableManager get companyProfiles =>
      $$CompanyProfilesTableTableManager(_db, _db.companyProfiles);
}
