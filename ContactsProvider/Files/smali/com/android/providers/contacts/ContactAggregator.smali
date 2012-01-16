.class public Lcom/android/providers/contacts/ContactAggregator;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# static fields
.field private static final kc:Z

.field private static final kd:Ljava/lang/String;

.field private static final ke:Ljava/lang/String;


# instance fields
.field private final I:Lcom/android/providers/contacts/CommonNicknameCache;

.field private final aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private final db:Lcom/android/providers/contacts/ContactsProvider2;

.field private dh:[Ljava/lang/String;

.field private final ix:Lcom/android/providers/contacts/NameSplitter;

.field private kA:[Ljava/lang/String;

.field private kB:J

.field private kC:J

.field private kD:J

.field private kE:J

.field private kF:Ljava/lang/String;

.field private kG:Ljava/lang/String;

.field private kH:Ljava/lang/StringBuilder;

.field private kI:Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

.field private kJ:Lcom/android/providers/contacts/ContactMatcher;

.field private kK:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

.field private final kL:Ljava/util/HashSet;

.field private kM:Z

.field private kf:Lcom/android/providers/contacts/PhotoPriorityResolver;

.field private kg:Landroid/database/sqlite/SQLiteStatement;

.field private kh:Landroid/database/sqlite/SQLiteStatement;

.field private ki:Landroid/database/sqlite/SQLiteStatement;

.field private kj:Landroid/database/sqlite/SQLiteStatement;

.field private kk:Landroid/database/sqlite/SQLiteStatement;

.field private kl:Landroid/database/sqlite/SQLiteStatement;

.field private km:Landroid/database/sqlite/SQLiteStatement;

.field private kn:Landroid/database/sqlite/SQLiteStatement;

.field private ko:Landroid/database/sqlite/SQLiteStatement;

.field private kp:Landroid/database/sqlite/SQLiteStatement;

.field private kq:Landroid/database/sqlite/SQLiteStatement;

.field private kr:Landroid/database/sqlite/SQLiteStatement;

.field private ks:Landroid/database/sqlite/SQLiteStatement;

.field private kt:Landroid/database/sqlite/SQLiteStatement;

.field private ku:Landroid/database/sqlite/SQLiteStatement;

.field private kv:Landroid/database/sqlite/SQLiteStatement;

.field private kw:Landroid/database/sqlite/SQLiteStatement;

.field private kx:Ljava/util/HashMap;

.field private ky:[Ljava/lang/String;

.field private kz:[Ljava/lang/String;

.field private mEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    const-string v0, "ContactAggregator"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/contacts/ContactAggregator;->kc:Z

    .line 114
    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactAggregator;->kd:Ljava/lang/String;

    .line 119
    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactAggregator;->ke:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/PhotoPriorityResolver;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/CommonNicknameCache;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 258
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-boolean v5, p0, Lcom/android/providers/contacts/ContactAggregator;->mEnabled:Z

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kx:Ljava/util/HashMap;

    .line 154
    new-array v0, v5, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->dh:[Ljava/lang/String;

    .line 155
    new-array v0, v6, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->ky:[Ljava/lang/String;

    .line 156
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kz:[Ljava/lang/String;

    .line 157
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kA:[Ljava/lang/String;

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kH:Ljava/lang/StringBuilder;

    .line 165
    new-instance v0, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;-><init>(Lcom/android/providers/contacts/ContactAggregator$1;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kI:Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

    .line 166
    new-instance v0, Lcom/android/providers/contacts/ContactMatcher;

    invoke-direct {v0}, Lcom/android/providers/contacts/ContactMatcher;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kJ:Lcom/android/providers/contacts/ContactMatcher;

    .line 167
    new-instance v0, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    invoke-direct {v0}, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kK:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    .line 1003
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kL:Ljava/util/HashSet;

    .line 259
    iput-object p1, p0, Lcom/android/providers/contacts/ContactAggregator;->db:Lcom/android/providers/contacts/ContactsProvider2;

    .line 260
    iput-object p2, p0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 261
    iput-object p3, p0, Lcom/android/providers/contacts/ContactAggregator;->kf:Lcom/android/providers/contacts/PhotoPriorityResolver;

    .line 262
    iput-object p4, p0, Lcom/android/providers/contacts/ContactAggregator;->ix:Lcom/android/providers/contacts/NameSplitter;

    .line 263
    iput-object p5, p0, Lcom/android/providers/contacts/ContactAggregator;->I:Lcom/android/providers/contacts/CommonNicknameCache;

    .line 265
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 269
    const-string v1, "INSERT OR REPLACE INTO agg_presence(presence_contact_id, mode, chat_capability) SELECT presence_contact_id,mode,chat_capability FROM presence WHERE  (mode * 10 + chat_capability) = (SELECT MAX (mode * 10 + chat_capability) FROM presence WHERE presence_contact_id=?) AND presence_contact_id=?;"

    .line 289
    const-string v1, "INSERT OR REPLACE INTO agg_presence(presence_contact_id, mode, chat_capability) SELECT presence_contact_id,mode,chat_capability FROM presence WHERE  (mode * 10 + chat_capability) = (SELECT MAX (mode * 10 + chat_capability) FROM presence WHERE presence_contact_id=?) AND presence_contact_id=?;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->kg:Landroid/database/sqlite/SQLiteStatement;

    .line 291
    const-string v1, "SELECT COUNT(_id) FROM raw_contacts WHERE contact_id=? AND _id<>?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->ki:Landroid/database/sqlite/SQLiteStatement;

    .line 297
    const-string v1, "DELETE FROM contacts WHERE _id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->kj:Landroid/database/sqlite/SQLiteStatement;

    .line 301
    const-string v1, "DELETE FROM agg_presence WHERE presence_contact_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->kk:Landroid/database/sqlite/SQLiteStatement;

    .line 305
    const-string v1, "UPDATE raw_contacts SET aggregation_needed=1 WHERE _id=? AND aggregation_needed=0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->kl:Landroid/database/sqlite/SQLiteStatement;

    .line 311
    const-string v1, "UPDATE contacts SET photo_id=?,photo_file_id=?  WHERE _id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->km:Landroid/database/sqlite/SQLiteStatement;

    .line 316
    const-string v1, "UPDATE contacts SET name_raw_contact_id=?  WHERE _id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->kn:Landroid/database/sqlite/SQLiteStatement;

    .line 321
    const-string v1, "UPDATE contacts SET lookup=?  WHERE _id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->kq:Landroid/database/sqlite/SQLiteStatement;

    .line 326
    const-string v1, "UPDATE contacts SET company=(SELECT data1 FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetype_id=? AND data1 NOT NULL AND contact_id=? ORDER BY is_super_primary DESC LIMIT 1) WHERE _id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->ko:Landroid/database/sqlite/SQLiteStatement;

    .line 337
    const-string v1, "UPDATE contacts SET nickname=(SELECT data1 FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetype_id=? AND data1 NOT NULL AND contact_id=? ORDER BY is_super_primary DESC LIMIT 1) WHERE _id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->kp:Landroid/database/sqlite/SQLiteStatement;

    .line 348
    const-string v1, "UPDATE contacts SET starred=(SELECT (CASE WHEN COUNT(starred)=0 THEN 0 ELSE 1 END) FROM raw_contacts WHERE contact_id=contacts._id AND starred=1) WHERE _id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->kr:Landroid/database/sqlite/SQLiteStatement;

    .line 354
    const-string v1, "UPDATE raw_contacts SET contact_id=?, aggregation_needed=0 WHERE _id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->ks:Landroid/database/sqlite/SQLiteStatement;

    .line 360
    const-string v1, "UPDATE raw_contacts SET contact_id=? WHERE _id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->kt:Landroid/database/sqlite/SQLiteStatement;

    .line 365
    const-string v1, "UPDATE raw_contacts SET aggregation_needed=0 WHERE _id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->ku:Landroid/database/sqlite/SQLiteStatement;

    .line 370
    const-string v1, "UPDATE presence SET presence_contact_id=? WHERE presence_raw_contact_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->kh:Landroid/database/sqlite/SQLiteStatement;

    .line 375
    const-string v1, "UPDATE contacts SET name_raw_contact_id=?, photo_id=?, photo_file_id=?, send_to_voicemail=?, custom_ringtone=?, last_time_contacted=?, times_contacted=?, starred=?, has_phone_number=?, lookup=?, contact_account_type=?  WHERE _id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->kv:Landroid/database/sqlite/SQLiteStatement;

    .line 376
    const-string v1, "INSERT INTO contacts (name_raw_contact_id, photo_id, photo_file_id, send_to_voicemail, custom_ringtone, last_time_contacted, times_contacted, starred, has_phone_number, lookup, contact_account_type)  VALUES (?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kw:Landroid/database/sqlite/SQLiteStatement;

    .line 378
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kC:J

    .line 379
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "vnd.android.cursor.item/identity"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kB:J

    .line 380
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kD:J

    .line 381
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kE:J

    .line 384
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "SELECT raw_contacts._id,display_name,display_name_source,account_type,account_name,data_set,sourceid,custom_ringtone,send_to_voicemail,last_time_contacted,times_contacted,starred,name_verified,data._id,data.mimetype_id,is_super_primary,data14 FROM raw_contacts LEFT OUTER JOIN data ON (data.raw_contact_id=raw_contacts._id AND ((mimetype_id=%d AND data15 NOT NULL) OR (mimetype_id=%d AND data1 NOT NULL))) WHERE raw_contacts._id=?"

    new-array v2, v6, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/android/providers/contacts/ContactAggregator;->kD:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    iget-wide v3, p0, Lcom/android/providers/contacts/ContactAggregator;->kE:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kF:Ljava/lang/String;

    .line 388
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "SELECT raw_contacts._id,display_name,display_name_source,account_type,account_name,data_set,sourceid,custom_ringtone,send_to_voicemail,last_time_contacted,times_contacted,starred,name_verified,data._id,data.mimetype_id,is_super_primary,data14 FROM raw_contacts LEFT OUTER JOIN data ON (data.raw_contact_id=raw_contacts._id AND ((mimetype_id=%d AND data15 NOT NULL) OR (mimetype_id=%d AND data1 NOT NULL))) WHERE contact_id=? AND deleted=0"

    new-array v2, v6, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/android/providers/contacts/ContactAggregator;->kD:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    iget-wide v3, p0, Lcom/android/providers/contacts/ContactAggregator;->kE:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kG:Ljava/lang/String;

    .line 391
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)J
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, -0x2

    const-wide/16 v2, -0x1

    .line 1131
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/ContactAggregator;->b(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)J

    move-result-wide v0

    .line 1132
    cmp-long v4, v0, v5

    if-nez v4, :cond_1

    move-wide v0, v2

    .line 1143
    :cond_0
    :goto_0
    return-wide v0

    .line 1135
    :cond_1
    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1137
    invoke-direct/range {p0 .. p5}, Lcom/android/providers/contacts/ContactAggregator;->b(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)J

    move-result-wide v0

    .line 1138
    cmp-long v4, v0, v5

    if-nez v4, :cond_0

    move-wide v0, v2

    .line 1139
    goto :goto_0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)J
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v8, -0x1

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 1066
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kM:Z

    if-nez v0, :cond_0

    .line 1067
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactAggregator;->o(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1072
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kL:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move-wide v0, v8

    .line 1110
    :goto_0
    return-wide v0

    .line 1076
    :cond_1
    const-string v1, "agg_exceptions JOIN raw_contacts raw_contacts1  ON (agg_exceptions.raw_contact_id1 = raw_contacts1._id)  JOIN raw_contacts raw_contacts2  ON (agg_exceptions.raw_contact_id2 = raw_contacts2._id) "

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$AggregateExceptionQuery;->COLUMNS:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "raw_contact_id1="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " OR "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "raw_contact_id2"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1083
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1084
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1085
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1087
    cmp-long v0, p2, v0

    if-nez v0, :cond_3

    .line 1088
    const/4 v0, 0x5

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x4

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1090
    const/4 v0, 0x4

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1098
    :goto_2
    cmp-long v4, v0, v8

    if-eqz v4, :cond_2

    .line 1099
    if-ne v3, v10, :cond_4

    .line 1100
    invoke-virtual {p4, v0, v1}, Lcom/android/providers/contacts/ContactMatcher;->K(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1107
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1093
    :cond_3
    const/4 v0, 0x3

    :try_start_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1095
    const/4 v0, 0x2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_2

    .line 1102
    :cond_4
    invoke-virtual {p4, v0, v1}, Lcom/android/providers/contacts/ContactMatcher;->L(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1107
    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1110
    const/16 v0, 0x64

    invoke-virtual {p4, v0, v10}, Lcom/android/providers/contacts/ContactMatcher;->d(IZ)J

    move-result-wide v0

    goto/16 :goto_0

    :cond_6
    move-wide v0, v8

    goto :goto_2
.end method

.method private a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2287
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 2288
    const-string v1, "_id"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2289
    const-string v1, " IN ("

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2290
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 2291
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 2292
    if-eqz v2, :cond_0

    .line 2293
    const-string v3, ","

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2295
    :cond_0
    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->bT()J

    move-result-wide v3

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2290
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 2297
    :cond_1
    const-string v1, ")"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2299
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2300
    const-string v1, " AND _id IN "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2301
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->db:Lcom/android/providers/contacts/ContactsProvider2;

    move-object/from16 v0, p6

    invoke-virtual {v1, v9, v0}, Lcom/android/providers/contacts/ContactsProvider2;->f(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2305
    :cond_2
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 2306
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/providers/contacts/ContactAggregator$ContactIdQuery;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2309
    :goto_1
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2310
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2313
    :catchall_0
    move-exception v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2317
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2318
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2319
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->bT()J

    move-result-wide v3

    .line 2320
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2321
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 2327
    :cond_5
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v0, p5

    if-le v1, v0, :cond_6

    .line 2328
    const/4 v1, 0x0

    move/from16 v0, p5

    invoke-interface {p4, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p4

    .line 2334
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2335
    const-string v1, "_id"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2336
    const-string v1, " IN ("

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2337
    const/4 v1, 0x0

    move v2, v1

    :goto_3
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_8

    .line 2338
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 2339
    if-eqz v2, :cond_7

    .line 2340
    const-string v3, ","

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2342
    :cond_7
    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->bT()J

    move-result-wide v3

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2337
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    .line 2344
    :cond_8
    const-string v1, ")"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2347
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id"

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 2350
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2351
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 2352
    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->bT()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 2355
    :cond_9
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2358
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    new-array v5, v1, [I

    .line 2359
    const/4 v1, 0x0

    move v2, v1

    :goto_5
    array-length v1, v5

    if-ge v2, v1, :cond_a

    .line 2360
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->bT()J

    move-result-wide v6

    .line 2361
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    aput v1, v5, v2

    .line 2359
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    .line 2364
    :cond_a
    new-instance v1, Lcom/android/providers/contacts/ReorderingCursorWrapper;

    invoke-direct {v1, v3, v5}, Lcom/android/providers/contacts/ReorderingCursorWrapper;-><init>(Landroid/database/Cursor;[I)V

    return-object v1
.end method

.method static synthetic a(Lcom/android/providers/contacts/ContactAggregator;)Lcom/android/providers/contacts/CommonNicknameCache;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->I:Lcom/android/providers/contacts/CommonNicknameCache;

    return-object v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/ArrayList;)Ljava/util/List;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2375
    new-instance v8, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

    invoke-direct {v8, v4}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;-><init>(Lcom/android/providers/contacts/ContactAggregator$1;)V

    .line 2376
    new-instance v9, Lcom/android/providers/contacts/ContactMatcher;

    invoke-direct {v9}, Lcom/android/providers/contacts/ContactMatcher;-><init>()V

    .line 2379
    invoke-virtual {v9, p2, p3}, Lcom/android/providers/contacts/ContactMatcher;->L(J)V

    .line 2381
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 2382
    :cond_0
    const-string v1, "raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$RawContactIdQuery;->COLUMNS:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2385
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2386
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, v8

    move-object v5, v9

    .line 2387
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactAggregator;->c(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2391
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2398
    :goto_1
    const/16 v0, 0x32

    invoke-virtual {v9, v0}, Lcom/android/providers/contacts/ContactMatcher;->aD(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2394
    :cond_2
    invoke-direct {p0, p1, v8, v9, p4}, Lcom/android/providers/contacts/ContactAggregator;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method private a(JLjava/lang/String;IZZ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1870
    const/4 v1, 0x0

    .line 1871
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->kK:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-wide v2, v2, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->pS:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 1896
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1897
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kK:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iput-wide p1, v0, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->pS:J

    .line 1898
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kK:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iput-object p3, v0, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->displayName:Ljava/lang/String;

    .line 1899
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kK:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iput p4, v0, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->pT:I

    .line 1900
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kK:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iput-boolean p6, v0, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->pU:Z

    .line 1901
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kK:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iput-boolean p5, v0, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->pV:Z

    .line 1903
    :cond_1
    return-void

    .line 1874
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1875
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->kK:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-boolean v2, v2, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->pU:Z

    if-nez v2, :cond_3

    if-nez p6, :cond_0

    .line 1878
    :cond_3
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->kK:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-boolean v2, v2, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->pU:Z

    if-ne v2, p6, :cond_5

    .line 1879
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->kK:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget v2, v2, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->pT:I

    if-lt v2, p4, :cond_0

    .line 1882
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->kK:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget v2, v2, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->pT:I

    if-ne v2, p4, :cond_5

    .line 1883
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->kK:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-boolean v2, v2, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->pV:Z

    if-nez v2, :cond_4

    if-nez p5, :cond_0

    .line 1885
    :cond_4
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->kK:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-boolean v2, v2, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->pV:Z

    if-ne v2, p5, :cond_5

    .line 1886
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->kK:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-object v2, v2, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->displayName:Ljava/lang/String;

    invoke-static {p3, v2}, Lcom/android/providers/contacts/NameNormalizer;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/sqlite/SQLiteStatement;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->dh:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1688
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->dh:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, p4}, Lcom/android/providers/contacts/ContactAggregator;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V

    .line 1689
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1199
    invoke-virtual {p4}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->clear()V

    .line 1200
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->dh:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1201
    const-string v1, "name_lookup"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$NameLookupQuery;->COLUMNS:[Ljava/lang/String;

    if-eqz p5, :cond_0

    const-string v3, "raw_contact_id=? AND name_type IN (0,1,2)"

    :goto_0
    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->dh:[Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1207
    :goto_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1208
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1209
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1210
    invoke-virtual {p4, v0, v2}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->e(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1213
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1201
    :cond_0
    const-string v3, "raw_contact_id=?"

    goto :goto_0

    .line 1213
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1215
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x2

    .line 1518
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    move v7, v8

    .line 1519
    :goto_0
    invoke-static {p2}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->a(Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;)I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 1520
    invoke-static {p2}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->b(Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;

    .line 1521
    iget-object v1, v0, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v5, :cond_0

    .line 1522
    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    invoke-virtual {v0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1523
    invoke-virtual {v9, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1524
    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(normalized_name GLOB \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*\') AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "name_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1531
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/ContactAggregator;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;ILjava/lang/String;)V

    .line 1519
    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 1537
    :cond_1
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2418
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;

    .line 2419
    const-string v2, "name"

    iget-object v3, v0, Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;->gX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2420
    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;->value:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)V

    goto :goto_0

    .line 2425
    :cond_1
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1402
    invoke-virtual {p3}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->clear()V

    .line 1403
    new-instance v0, Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->ix:Lcom/android/providers/contacts/NameSplitter;

    invoke-direct {v0, p0, v1, p3}, Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;-><init>(Lcom/android/providers/contacts/ContactAggregator;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;)V

    .line 1405
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;->a(JJLjava/lang/String;I)V

    .line 1406
    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1428
    :goto_0
    return-void

    .line 1410
    :cond_0
    const-string v2, "name_lookup JOIN raw_contacts ON (raw_contact_id = raw_contacts._id)"

    sget-object v3, Lcom/android/providers/contacts/ContactAggregator$NameLookupMatchQueryWithParameter;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/android/providers/contacts/ContactAggregator;->kd:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1414
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1415
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1416
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1417
    invoke-virtual {v0, v5}, Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;->K(Ljava/lang/String;)I

    move-result v4

    .line 1418
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1419
    const/4 v8, 0x0

    move-object v1, p4

    move-object v7, v5

    invoke-virtual/range {v1 .. v8}, Lcom/android/providers/contacts/ContactMatcher;->a(JILjava/lang/String;ILjava/lang/String;I)V

    .line 1421
    const/4 v1, 0x3

    if-ne v4, v1, :cond_1

    const/4 v1, 0x3

    if-ne v6, v1, :cond_1

    .line 1422
    invoke-virtual {p4, v2, v3}, Lcom/android/providers/contacts/ContactMatcher;->J(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1426
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;ILjava/lang/String;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1559
    const-string v1, "name_lookup INNER JOIN view_raw_contacts ON (name_lookup.raw_contact_id = view_raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$ContactNameLookupQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v3, p2

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1563
    :cond_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1564
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 1565
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1566
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1571
    const/4 v0, 0x0

    move v8, v0

    :goto_0
    invoke-static {p3}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->a(Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;)I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 1572
    invoke-static {p3}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->b(Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;

    .line 1573
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget v3, v0, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;->bB:I

    iget-object v4, v0, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    move-object v0, p4

    move/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactMatcher;->a(JILjava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1571
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 1578
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1580
    return-void

    .line 1578
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 35
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1706
    const-wide/16 v6, -0x1

    .line 1707
    const-wide/16 v20, -0x1

    .line 1708
    const-wide/16 v18, 0x0

    .line 1709
    const/16 v17, 0x0

    .line 1710
    const/16 v16, 0x0

    .line 1711
    const/4 v15, -0x1

    .line 1712
    const/4 v3, 0x0

    .line 1713
    const/16 v24, 0x0

    .line 1714
    const/16 v23, 0x0

    .line 1715
    const/4 v14, 0x0

    .line 1716
    const-wide/16 v12, 0x0

    .line 1717
    const/4 v11, 0x0

    .line 1718
    const/4 v10, 0x0

    .line 1719
    const/16 v22, 0x0

    .line 1720
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    .line 1722
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactAggregator;->kK:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->clear()V

    .line 1724
    invoke-virtual/range {p1 .. p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    .line 1726
    :goto_0
    :try_start_0
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1727
    const/4 v4, 0x0

    move-object/from16 v0, v32

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1728
    cmp-long v8, v4, v6

    if-eqz v8, :cond_12

    .line 1730
    add-int/lit8 v29, v3, 0x1

    .line 1733
    const/4 v3, 0x3

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1734
    const/4 v6, 0x5

    move-object/from16 v0, v32

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1735
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v30, v3

    .line 1740
    :goto_1
    const/4 v3, 0x1

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1741
    const/4 v3, 0x2

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1742
    const/16 v3, 0xc

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1743
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/providers/contacts/ContactAggregator;->db:Lcom/android/providers/contacts/ContactsProvider2;

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Lcom/android/providers/contacts/ContactsProvider2;->ah(Ljava/lang/String;)Z

    move-result v8

    if-eqz v3, :cond_2

    const/4 v9, 0x1

    :goto_2
    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/providers/contacts/ContactAggregator;->a(JLjava/lang/String;IZZ)V

    .line 1748
    const/16 v3, 0x8

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1749
    const/16 v3, 0x8

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    .line 1751
    :goto_3
    if-eqz v3, :cond_11

    .line 1752
    add-int/lit8 v24, v24, 0x1

    move/from16 v28, v24

    .line 1756
    :goto_4
    if-nez v23, :cond_10

    const/4 v3, 0x7

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_10

    .line 1758
    const/4 v3, 0x7

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v27, v23

    .line 1761
    :goto_5
    if-nez v14, :cond_f

    const/4 v3, 0x3

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1763
    const/4 v3, 0x3

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v26, v14

    .line 1766
    :goto_6
    const/16 v3, 0x9

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 1767
    cmp-long v3, v24, v12

    if-lez v3, :cond_e

    .line 1771
    :goto_7
    const/16 v3, 0xa

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 1772
    move/from16 v0, v23

    if-le v0, v11, :cond_d

    .line 1776
    :goto_8
    const/16 v3, 0xb

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_c

    .line 1777
    const/4 v3, 0x1

    .line 1780
    :goto_9
    const/4 v7, 0x4

    move-object/from16 v0, v32

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v7, 0x6

    move-object/from16 v0, v32

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v7, p0

    move-object/from16 v8, v31

    move-object/from16 v9, v30

    move-wide v11, v4

    move-object v14, v6

    invoke-virtual/range {v7 .. v14}, Lcom/android/providers/contacts/ContactAggregator;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    move v10, v3

    move/from16 v11, v23

    move-wide/from16 v12, v24

    move-object/from16 v14, v26

    move-object/from16 v23, v27

    move/from16 v24, v28

    move/from16 v25, v29

    move-wide/from16 v26, v4

    .line 1789
    :goto_a
    const/16 v3, 0xd

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1790
    const/16 v3, 0xd

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1791
    const/16 v3, 0x10

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1792
    const/16 v3, 0xe

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1793
    const/16 v3, 0xf

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    move v4, v3

    .line 1794
    :goto_b
    int-to-long v0, v5

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/providers/contacts/ContactAggregator;->kD:J

    move-wide/from16 v33, v0

    cmp-long v3, v28, v33

    if-nez v3, :cond_5

    .line 1795
    if-nez v16, :cond_a

    .line 1799
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v7}, Lcom/android/providers/contacts/ContactAggregator;->h(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;

    move-result-object v5

    .line 1800
    const/4 v3, 0x3

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->kf:Lcom/android/providers/contacts/PhotoPriorityResolver;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lcom/android/providers/contacts/PhotoPriorityResolver;->O(Ljava/lang/String;)I

    move-result v3

    .line 1802
    if-nez v4, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v5, v3, v1, v15}, Lcom/android/providers/contacts/ContactAggregator;->a(Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;ILcom/android/providers/contacts/ContactAggregator$PhotoEntry;I)Z

    move-result v28

    if-eqz v28, :cond_b

    .line 1808
    :cond_0
    or-int v4, v4, v16

    :goto_c
    move v15, v3

    move/from16 v16, v4

    move-object/from16 v17, v5

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    move/from16 v3, v22

    :goto_d
    move/from16 v22, v3

    move-wide/from16 v6, v26

    move/from16 v3, v25

    .line 1815
    goto/16 :goto_0

    :cond_1
    move-object/from16 v30, v3

    .line 1735
    goto/16 :goto_1

    .line 1743
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 1749
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 1793
    :cond_4
    const/4 v3, 0x0

    move v4, v3

    goto :goto_b

    .line 1811
    :cond_5
    int-to-long v3, v5

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/providers/contacts/ContactAggregator;->kE:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    .line 1812
    const/4 v3, 0x1

    goto :goto_d

    .line 1817
    :cond_6
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 1820
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->kK:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-wide v5, v5, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->pS:J

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1823
    const-wide/16 v4, -0x1

    cmp-long v4, v20, v4

    if-eqz v4, :cond_7

    .line 1824
    const/4 v4, 0x2

    move-object/from16 v0, p4

    move-wide/from16 v1, v20

    invoke-virtual {v0, v4, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1829
    :goto_e
    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-eqz v4, :cond_8

    .line 1830
    const/4 v4, 0x3

    move-object/from16 v0, p4

    move-wide/from16 v1, v18

    invoke-virtual {v0, v4, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1835
    :goto_f
    const/4 v5, 0x4

    move/from16 v0, v24

    if-ne v3, v0, :cond_9

    const-wide/16 v3, 0x1

    :goto_10
    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1837
    const/4 v3, 0x5

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-static {v0, v3, v1}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 1839
    const/4 v3, 0x6

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1841
    const/4 v3, 0x7

    int-to-long v4, v11

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1843
    const/16 v3, 0x8

    int-to-long v4, v10

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1845
    const/16 v3, 0x9

    move/from16 v0, v22

    int-to-long v4, v0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1847
    const/16 v3, 0xa

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1849
    const/16 v3, 0xb

    move-object/from16 v0, p4

    invoke-static {v0, v3, v14}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 1851
    return-void

    .line 1817
    :catchall_0
    move-exception v3

    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    throw v3

    .line 1826
    :cond_7
    const/4 v4, 0x2

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_e

    .line 1832
    :cond_8
    const/4 v4, 0x3

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_f

    .line 1835
    :cond_9
    const-wide/16 v3, 0x0

    goto :goto_10

    :cond_a
    move/from16 v3, v22

    goto/16 :goto_d

    :cond_b
    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-wide/from16 v6, v18

    move-wide/from16 v8, v20

    goto/16 :goto_c

    :cond_c
    move v3, v10

    goto/16 :goto_9

    :cond_d
    move/from16 v23, v11

    goto/16 :goto_8

    :cond_e
    move-wide/from16 v24, v12

    goto/16 :goto_7

    :cond_f
    move-object/from16 v26, v14

    goto/16 :goto_6

    :cond_10
    move-object/from16 v27, v23

    goto/16 :goto_5

    :cond_11
    move/from16 v28, v24

    goto/16 :goto_4

    :cond_12
    move/from16 v25, v3

    move-wide/from16 v26, v6

    goto/16 :goto_a
.end method

.method private declared-synchronized a(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)V
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 681
    monitor-enter p0

    const/4 v4, 0x0

    .line 683
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/contacts/ContactAggregator;->kx:Ljava/util/HashMap;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 684
    if-eqz v3, :cond_c

    .line 685
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v12, v3

    .line 688
    :goto_0
    const-wide/16 v5, -0x1

    .line 689
    const-wide/16 v10, -0x1

    .line 691
    if-nez v12, :cond_7

    .line 692
    invoke-virtual/range {p10 .. p10}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->clear()V

    .line 693
    invoke-virtual/range {p11 .. p11}, Lcom/android/providers/contacts/ContactMatcher;->clear()V

    .line 695
    move-wide/from16 v0, p3

    move-object/from16 v2, p11

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/android/providers/contacts/ContactAggregator;->a(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)J

    move-result-wide v5

    .line 696
    const-wide/16 v3, -0x1

    cmp-long v3, v5, v3

    if-nez v3, :cond_8

    .line 700
    const-wide/16 v3, 0x0

    cmp-long v3, p8, v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v0, p8

    invoke-virtual {v3, p2, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->b(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v3, p0

    move-object v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    .line 702
    invoke-direct/range {v3 .. v8}, Lcom/android/providers/contacts/ContactAggregator;->a(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)J

    move-result-wide v5

    .line 708
    :cond_1
    const-wide/16 v3, -0x1

    cmp-long v3, v5, v3

    if-eqz v3, :cond_8

    cmp-long v3, v5, p8

    if-eqz v3, :cond_8

    move-object v3, p0

    move-object v4, p2

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v3 .. v9}, Lcom/android/providers/contacts/ContactAggregator;->a(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 712
    const-wide/16 v3, -0x1

    move-wide v7, v5

    .line 719
    :goto_1
    const-wide/16 v5, 0x0

    .line 721
    const-wide/16 v9, 0x0

    cmp-long v9, p8, v9

    if-eqz v9, :cond_2

    .line 722
    iget-object v5, p0, Lcom/android/providers/contacts/ContactAggregator;->ki:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x1

    move-wide/from16 v0, p8

    invoke-virtual {v5, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 723
    iget-object v5, p0, Lcom/android/providers/contacts/ContactAggregator;->ki:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x2

    move-wide/from16 v0, p3

    invoke-virtual {v5, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 724
    iget-object v5, p0, Lcom/android/providers/contacts/ContactAggregator;->ki:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v5

    .line 729
    :cond_2
    const-wide/16 v9, -0x1

    cmp-long v9, v3, v9

    if-nez v9, :cond_4

    const-wide/16 v9, 0x0

    cmp-long v9, p8, v9

    if-eqz v9, :cond_4

    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-eqz v9, :cond_3

    const/4 v9, 0x2

    if-ne v12, v9, :cond_4

    :cond_3
    move-wide/from16 v3, p8

    .line 736
    :cond_4
    cmp-long v9, v3, p8

    if-nez v9, :cond_9

    .line 738
    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->t(J)V

    .line 765
    :cond_5
    :goto_2
    const-wide/16 v3, -0x1

    cmp-long v3, v7, v3

    if-eqz v3, :cond_6

    .line 766
    invoke-direct {p0, p1, p2, v7, v8}, Lcom/android/providers/contacts/ContactAggregator;->c(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 768
    :cond_6
    monitor-exit p0

    return-void

    .line 715
    :cond_7
    const/4 v3, 0x3

    if-eq v12, v3, :cond_6

    :cond_8
    move-wide v7, v10

    move-wide v3, v5

    goto :goto_1

    .line 739
    :cond_9
    const-wide/16 v9, -0x1

    cmp-long v9, v3, v9

    if-nez v9, :cond_a

    .line 741
    :try_start_1
    invoke-direct/range {p0 .. p4}, Lcom/android/providers/contacts/ContactAggregator;->d(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 742
    const-wide/16 v3, 0x0

    cmp-long v3, v5, v3

    if-lez v3, :cond_5

    .line 743
    move-wide/from16 v0, p8

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->f(Lcom/android/providers/contacts/TransactionContext;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 681
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 747
    :cond_a
    const-wide/16 v9, 0x0

    cmp-long v5, v5, v9

    if-nez v5, :cond_b

    .line 749
    :try_start_2
    iget-object v5, p0, Lcom/android/providers/contacts/ContactAggregator;->kj:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x1

    move-wide/from16 v0, p8

    invoke-virtual {v5, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 750
    iget-object v5, p0, Lcom/android/providers/contacts/ContactAggregator;->kj:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 752
    iget-object v5, p0, Lcom/android/providers/contacts/ContactAggregator;->kk:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x1

    move-wide/from16 v0, p8

    invoke-virtual {v5, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 753
    iget-object v5, p0, Lcom/android/providers/contacts/ContactAggregator;->kk:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 756
    :cond_b
    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/android/providers/contacts/ContactAggregator;->f(JJ)V

    .line 757
    iget-object v5, p0, Lcom/android/providers/contacts/ContactAggregator;->kv:Landroid/database/sqlite/SQLiteStatement;

    invoke-direct {p0, p2, v3, v4, v5}, Lcom/android/providers/contacts/ContactAggregator;->a(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/sqlite/SQLiteStatement;)V

    .line 758
    iget-object v5, p0, Lcom/android/providers/contacts/ContactAggregator;->kv:Landroid/database/sqlite/SQLiteStatement;

    const/16 v6, 0xc

    invoke-virtual {v5, v6, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 759
    iget-object v5, p0, Lcom/android/providers/contacts/ContactAggregator;->kv:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 760
    iget-object v5, p0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5, p1, v3, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 761
    invoke-direct {p0, v3, v4}, Lcom/android/providers/contacts/ContactAggregator;->q(J)V

    .line 762
    invoke-direct {p0, p2, v3, v4}, Lcom/android/providers/contacts/ContactAggregator;->p(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_c
    move v12, v4

    goto/16 :goto_0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 778
    if-nez p4, :cond_0

    .line 779
    const-string v1, "SELECT count(_id) FROM raw_contacts WHERE contact_id=? AND account_type IS NULL  AND account_name IS NULL  AND data_set IS NULL"

    .line 784
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->dh:[Ljava/lang/String;

    .line 785
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 808
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 810
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 811
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 813
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v0

    .line 786
    :cond_0
    if-nez p6, :cond_1

    .line 787
    const-string v1, "SELECT count(_id) FROM raw_contacts WHERE contact_id=? AND account_type=? AND account_name=? AND data_set IS NULL"

    .line 792
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kz:[Ljava/lang/String;

    .line 793
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 794
    aput-object p4, v0, v2

    .line 795
    aput-object p5, v0, v5

    goto :goto_0

    .line 797
    :cond_1
    const-string v1, "SELECT count(_id) FROM raw_contacts WHERE contact_id=? AND account_type=? AND account_name=? AND data_set=?"

    .line 802
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kA:[Ljava/lang/String;

    .line 803
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 804
    aput-object p4, v0, v2

    .line 805
    aput-object p5, v0, v5

    .line 806
    const/4 v4, 0x3

    aput-object p6, v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    .line 811
    goto :goto_1

    .line 813
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private a(Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;ILcom/android/providers/contacts/ContactAggregator$PhotoEntry;I)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1697
    invoke-virtual {p1, p3}, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;->a(Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;)I

    move-result v0

    .line 1698
    if-ltz v0, :cond_0

    if-nez v0, :cond_1

    if-le p2, p4, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)J
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 1154
    const/16 v0, 0x46

    invoke-virtual {p5, v0}, Lcom/android/providers/contacts/ContactMatcher;->aC(I)Ljava/util/List;

    move-result-object v6

    .line 1156
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 1157
    :cond_0
    const-wide/16 v0, -0x1

    .line 1178
    :goto_0
    return-wide v0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 1160
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactAggregator;->a(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Z)V

    .line 1162
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kH:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1163
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kH:Ljava/lang/StringBuilder;

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v7

    .line 1164
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1165
    if-eqz v0, :cond_2

    .line 1166
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->kH:Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1168
    :cond_2
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->kH:Ljava/lang/StringBuilder;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1164
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1173
    :cond_3
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kH:Ljava/lang/StringBuilder;

    const-string v1, ") AND name_type IN (0,1,2)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kH:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/ContactAggregator;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;ILjava/lang/String;)V

    .line 1178
    const/16 v0, 0x32

    invoke-virtual {p5, v0, v7}, Lcom/android/providers/contacts/ContactMatcher;->d(IZ)J

    move-result-wide v0

    goto :goto_0
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)J
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    .line 1223
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactAggregator;->c(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 1224
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactAggregator;->d(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 1225
    const/16 v0, 0x46

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Lcom/android/providers/contacts/ContactMatcher;->d(IZ)J

    move-result-wide v0

    .line 1226
    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1233
    :goto_0
    return-wide v0

    .line 1230
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactAggregator;->e(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 1231
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactAggregator;->f(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    move-wide v0, v2

    .line 1233
    goto :goto_0
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2407
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/ContactAggregator;->c(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 2408
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/ContactAggregator;->d(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 2409
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/ContactAggregator;->e(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 2410
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/ContactAggregator;->f(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 2411
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactAggregator;->a(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Z)V

    .line 2412
    invoke-direct {p0, p1, p4, p5}, Lcom/android/providers/contacts/ContactAggregator;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)V

    .line 2413
    return-void
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 1265
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kz:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1266
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kz:[Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->kz:[Ljava/lang/String;

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/android/providers/contacts/ContactAggregator;->kB:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object v4, v0, v1

    .line 1267
    const-string v1, "data dataA JOIN data dataB ON (dataA.data2=dataB.data2 AND dataA.data1=dataB.data1) JOIN raw_contacts ON (dataB.raw_contact_id = raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$IdentityLookupMatchQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "dataA.raw_contact_id=? AND dataA.mimetype_id=? AND dataA.data2 NOT NULL AND dataA.data1 NOT NULL AND dataB.mimetype_id=? AND aggregation_needed=0 AND contact_id IN default_directory"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->kz:[Ljava/lang/String;

    const-string v5, "contact_id"

    move-object v0, p1

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1271
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1272
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1273
    invoke-virtual {p4, v2, v3}, Lcom/android/providers/contacts/ContactMatcher;->G(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1276
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1279
    return-void
.end method

.method private c(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 823
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->dh:[Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 824
    const-string v1, "SELECT COUNT(_id) FROM raw_contacts WHERE contact_id=?"

    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->dh:[Ljava/lang/String;

    invoke-static {p2, v1, v2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v1

    long-to-int v1, v1

    .line 828
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 835
    :cond_1
    const-string v2, "SELECT _id FROM raw_contacts WHERE contact_id=?   AND _id NOT IN (SELECT raw_contact_id1 FROM agg_exceptions WHERE type=1 UNION SELECT raw_contact_id2 FROM agg_exceptions WHERE type=1)"

    .line 850
    iget-object v3, p0, Lcom/android/providers/contacts/ContactAggregator;->dh:[Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 853
    :goto_1
    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_2

    .line 854
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 861
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aQ()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 864
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->bF()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/providers/contacts/T9SearchSupport;->k(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 867
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 869
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 870
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/providers/contacts/ContactAggregator;->f(Lcom/android/providers/contacts/TransactionContext;J)V

    goto :goto_0

    .line 857
    :cond_4
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 858
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/android/providers/contacts/ContactAggregator;->d(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 853
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 867
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private d(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x3

    const/4 v2, 0x0

    .line 1312
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->dh:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1313
    const-string v1, "name_lookup nameA JOIN name_lookup nameB ON (nameA.normalized_name=nameB.normalized_name) JOIN raw_contacts ON (nameB.raw_contact_id = raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$NameLookupMatchQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "nameA.raw_contact_id=? AND aggregation_needed=0 AND contact_id IN default_directory"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->dh:[Ljava/lang/String;

    sget-object v8, Lcom/android/providers/contacts/ContactAggregator;->kd:Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1317
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1318
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1319
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1320
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1321
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1322
    const/4 v7, 0x0

    move-object v0, p4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactMatcher;->a(JILjava/lang/String;ILjava/lang/String;I)V

    .line 1324
    if-ne v3, v9, :cond_0

    if-ne v5, v9, :cond_0

    .line 1326
    invoke-virtual {p4, v1, v2}, Lcom/android/providers/contacts/ContactMatcher;->J(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1330
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1332
    return-void
.end method

.method private d(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->dh:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 880
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kF:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->dh:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->kw:Landroid/database/sqlite/SQLiteStatement;

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/android/providers/contacts/ContactAggregator;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V

    .line 882
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kw:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 883
    invoke-direct {p0, p3, p4, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->f(JJ)V

    .line 884
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 885
    invoke-direct {p0, p3, p4, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->g(JJ)V

    .line 886
    invoke-direct {p0, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->q(J)V

    .line 887
    invoke-direct {p0, p2, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->p(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 888
    return-void
.end method

.method private e(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 557
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->dh:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 558
    const-string v1, "raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$RawContactIdAndAggregationModeQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "contact_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->dh:[Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 562
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 564
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 566
    if-nez v0, :cond_0

    .line 567
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/android/providers/contacts/ContactAggregator;->a(JIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 573
    return-void

    .line 571
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private e(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1454
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kz:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1455
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kz:[Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->kz:[Ljava/lang/String;

    const/4 v3, 0x2

    iget-wide v6, p0, Lcom/android/providers/contacts/ContactAggregator;->kC:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object v4, v0, v1

    .line 1456
    const-string v1, "data dataA JOIN data dataB ON (dataA.data1=dataB.data1) JOIN raw_contacts ON (dataB.raw_contact_id = raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$EmailLookupQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "dataA.raw_contact_id=? AND dataA.mimetype_id=? AND dataA.data1 NOT NULL AND dataB.mimetype_id=? AND aggregation_needed=0 AND contact_id IN default_directory"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->kz:[Ljava/lang/String;

    sget-object v8, Lcom/android/providers/contacts/ContactAggregator;->ke:Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1460
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1461
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1462
    invoke-virtual {p4, v2, v3}, Lcom/android/providers/contacts/ContactMatcher;->I(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1465
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1467
    return-void
.end method

.method private f(JJ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 976
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->ks:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 977
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->ks:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 978
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->ks:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 979
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->bF()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->k(J)V

    .line 982
    :cond_0
    return-void
.end method

.method private f(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1497
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->ky:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1498
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->ky:[Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aF()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1499
    const-string v1, "phone_lookup phoneA JOIN data dataA ON (dataA._id=phoneA.data_id) JOIN phone_lookup phoneB ON (phoneA.min_match=phoneB.min_match) JOIN data dataB ON (dataB._id=phoneB.data_id) JOIN raw_contacts ON (dataB.raw_contact_id = raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$PhoneLookupQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "dataA.raw_contact_id=? AND PHONE_NUMBERS_EQUAL(dataA.data1, dataB.data1,?) AND aggregation_needed=0 AND contact_id IN default_directory"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->ky:[Ljava/lang/String;

    sget-object v8, Lcom/android/providers/contacts/ContactAggregator;->ke:Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1503
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1504
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1505
    invoke-virtual {p4, v2, v3}, Lcom/android/providers/contacts/ContactMatcher;->H(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1508
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1510
    return-void
.end method

.method private g(JJ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 985
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kh:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 986
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kh:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 987
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kh:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 988
    return-void
.end method

.method private h(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 2025
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 2028
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->db:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->fB()I

    move-result v1

    .line 2029
    new-instance v0, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;

    mul-int/2addr v1, v1

    invoke-direct {v0, p0, v1, v8, v5}, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;-><init>(Lcom/android/providers/contacts/ContactAggregator;IILcom/android/providers/contacts/ContactAggregator$1;)V

    .line 2044
    :goto_0
    return-object v0

    .line 2031
    :cond_0
    const-string v1, "photo_files"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$PhotoFileQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "_id=?"

    new-array v4, v9, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2034
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_1

    .line 2035
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2036
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    mul-int/2addr v2, v0

    .line 2038
    new-instance v0, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;-><init>(Lcom/android/providers/contacts/ContactAggregator;IILcom/android/providers/contacts/ContactAggregator$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2041
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2044
    new-instance v0, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;

    invoke-direct {v0, p0, v8, v8, v5}, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;-><init>(Lcom/android/providers/contacts/ContactAggregator;IILcom/android/providers/contacts/ContactAggregator$1;)V

    goto :goto_0

    .line 2041
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private n(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2167
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->ko:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/organization"

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2168
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->ko:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2169
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->ko:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2170
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->ko:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2171
    return-void
.end method

.method private o(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 1017
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kL:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1018
    const-string v1, "agg_exceptions"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$AggregateExceptionPrefetchQuery;->COLUMNS:[Ljava/lang/String;

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1023
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1024
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1025
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1026
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kL:Ljava/util/HashSet;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1027
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kL:Ljava/util/HashSet;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1030
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1033
    iput-boolean v8, p0, Lcom/android/providers/contacts/ContactAggregator;->kM:Z

    .line 1034
    return-void
.end method

.method private o(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2174
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kp:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/nickname"

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2175
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kp:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2176
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kp:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2177
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kp:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2178
    return-void
.end method

.method private p(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2181
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->n(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 2182
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->o(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 2183
    return-void
.end method

.method private q(J)V
    .locals 2
    .parameter

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kg:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 659
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kg:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 660
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kg:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 661
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/ContactAggregator;->r(J)V

    .line 662
    return-void
.end method

.method private r(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2211
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->s(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;

    move-result-object v0

    .line 2213
    if-nez v0, :cond_0

    .line 2214
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kq:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 2218
    :goto_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kq:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2220
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kq:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2221
    return-void

    .line 2216
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->kq:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private t(J)V
    .locals 2
    .parameter

    .prologue
    .line 965
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->ku:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 966
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->ku:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 967
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->bF()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport;->k(J)V

    .line 970
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)J
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 581
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/providers/contacts/ContactAggregator;->f(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v0

    .line 582
    invoke-virtual {p0, p3, p4, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->e(JJ)V

    .line 583
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 584
    invoke-direct {p0, p2, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->p(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 585
    return-wide v0
.end method

.method public a(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;JILjava/lang/String;Ljava/util/ArrayList;)Landroid/database/Cursor;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2263
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2264
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2266
    :try_start_0
    invoke-direct {p0, v2, p3, p4, p7}, Lcom/android/providers/contacts/ContactAggregator;->a(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/ArrayList;)Ljava/util/List;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p5

    move-object v6, p6

    .line 2267
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/ContactAggregator;->a(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2269
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public a(JI)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kx:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    return-void
.end method

.method public a(JIZ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 525
    if-nez p4, :cond_1

    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kx:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    if-nez p3, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kx:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 539
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kx:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    return-void

    .line 534
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kl:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 535
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kl:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0
.end method

.method public a(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 22
    .parameter
    .parameter

    .prologue
    .line 421
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/contacts/ContactAggregator;->kx:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 422
    if-nez v3, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 427
    sget-boolean v1, Lcom/android/providers/contacts/ContactAggregator;->kc:Z

    if-eqz v1, :cond_2

    .line 428
    const-string v1, "ContactAggregator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Contact aggregation: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_2
    const/16 v1, 0xabb

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    neg-int v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 433
    new-array v4, v3, [Ljava/lang/String;

    .line 435
    const/4 v1, 0x0

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactAggregator;->kH:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactAggregator;->kH:Ljava/lang/StringBuilder;

    const-string v5, "SELECT _id,contact_id, account_type,account_name, data_set FROM raw_contacts WHERE _id IN("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactAggregator;->kx:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 439
    if-lez v2, :cond_3

    .line 440
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/contacts/ContactAggregator;->kH:Ljava/lang/StringBuilder;

    const/16 v8, 0x2c

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 442
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/contacts/ContactAggregator;->kH:Ljava/lang/StringBuilder;

    const/16 v8, 0x3f

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 443
    add-int/lit8 v1, v2, 0x1

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    move v2, v1

    goto :goto_1

    .line 446
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/contacts/ContactAggregator;->kH:Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 448
    new-array v0, v3, [J

    move-object/from16 v16, v0

    .line 449
    new-array v0, v3, [J

    move-object/from16 v17, v0

    .line 450
    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 451
    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 452
    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 453
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/contacts/ContactAggregator;->kH:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 455
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v21

    .line 456
    const/4 v1, 0x0

    .line 457
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 458
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v16, v1

    .line 459
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    aput-wide v3, v17, v1

    .line 460
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v18, v1

    .line 461
    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v19, v1

    .line 462
    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v20, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 466
    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 469
    const/4 v1, 0x0

    move v13, v1

    :goto_3
    move/from16 v0, v21

    if-ge v13, v0, :cond_6

    .line 470
    aget-wide v4, v16, v13

    aget-object v6, v18, v13

    aget-object v7, v19, v13

    aget-object v8, v20, v13

    aget-wide v9, v17, v13

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/providers/contacts/ContactAggregator;->kI:Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/contacts/ContactAggregator;->kJ:Lcom/android/providers/contacts/ContactMatcher;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v12}, Lcom/android/providers/contacts/ContactAggregator;->a(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)V

    .line 469
    add-int/lit8 v1, v13, 0x1

    move v13, v1

    goto :goto_3

    .line 466
    :catchall_0
    move-exception v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v1

    .line 474
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v14

    .line 475
    const/16 v3, 0xabb

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 477
    sget-boolean v3, Lcom/android/providers/contacts/ContactAggregator;->kc:Z

    if-eqz v3, :cond_0

    .line 478
    if-nez v21, :cond_7

    const-string v1, ""

    .line 479
    :goto_4
    const-string v2, "ContactAggregator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Contact aggregation complete: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 478
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    int-to-long v4, v0

    div-long/2addr v1, v4

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms per contact"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4
.end method

.method public b(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 612
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mEnabled:Z

    if-nez v0, :cond_0

    .line 640
    :goto_0
    return-void

    .line 616
    :cond_0
    new-instance v10, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

    const/4 v0, 0x0

    invoke-direct {v10, v0}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;-><init>(Lcom/android/providers/contacts/ContactAggregator$1;)V

    .line 617
    new-instance v11, Lcom/android/providers/contacts/ContactMatcher;

    invoke-direct {v11}, Lcom/android/providers/contacts/ContactMatcher;-><init>()V

    .line 619
    const-wide/16 v13, 0x0

    .line 620
    const/4 v12, 0x0

    .line 621
    const/4 v9, 0x0

    .line 622
    const/4 v8, 0x0

    .line 623
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->dh:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 624
    const-string v1, "raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$RawContactIdAndAccountQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->dh:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 628
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 629
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 630
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 631
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 632
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 635
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    .line 638
    invoke-direct/range {v0 .. v11}, Lcom/android/providers/contacts/ContactAggregator;->a(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)V

    goto :goto_0

    .line 635
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    move-object v7, v8

    move-object v5, v9

    move-object v6, v12

    move-wide v8, v13

    goto :goto_1
.end method

.method protected b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1858
    invoke-static/range {p1 .. p7}, Lcom/android/providers/contacts/ContactLookupKey;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 1860
    return-void
.end method

.method public d(Lcom/android/providers/contacts/TransactionContext;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mEnabled:Z

    if-nez v0, :cond_1

    .line 513
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->f(J)I

    move-result v0

    .line 490
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 495
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->a(JIZ)V

    goto :goto_0

    .line 500
    :pswitch_2
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->g(J)J

    move-result-wide v0

    .line 502
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 503
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->f(Lcom/android/providers/contacts/TransactionContext;J)V

    goto :goto_0

    .line 509
    :pswitch_3
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->b(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0

    .line 490
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public dT()V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kx:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 517
    return-void
.end method

.method public dU()V
    .locals 1

    .prologue
    .line 1007
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kM:Z

    .line 1008
    return-void
.end method

.method protected e(JJ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 956
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 957
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 958
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 959
    return-void
.end method

.method public f(Landroid/database/sqlite/SQLiteDatabase;J)J
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->dh:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 590
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kF:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->dh:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->kw:Landroid/database/sqlite/SQLiteStatement;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactAggregator;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)V

    .line 591
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kw:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method

.method public f(Lcom/android/providers/contacts/TransactionContext;J)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 643
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mEnabled:Z

    if-nez v0, :cond_0

    .line 655
    :goto_0
    return-void

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 648
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->kv:Landroid/database/sqlite/SQLiteStatement;

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/android/providers/contacts/ContactAggregator;->a(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/sqlite/SQLiteStatement;)V

    .line 649
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->kv:Landroid/database/sqlite/SQLiteStatement;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 650
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->kv:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 652
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 653
    invoke-direct {p0, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->q(J)V

    .line 654
    invoke-direct {p0, v0, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->p(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public g(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 19
    .parameter
    .parameter

    .prologue
    .line 1921
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->g(J)J

    move-result-wide v15

    .line 1922
    const-wide/16 v2, 0x0

    cmp-long v2, v15, v2

    if-nez v2, :cond_1

    .line 1985
    :cond_0
    :goto_0
    return-void

    .line 1926
    :cond_1
    const-wide/16 v13, -0x1

    .line 1927
    const-wide/16 v11, 0x0

    .line 1928
    const/4 v10, -0x1

    .line 1930
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v2

    .line 1932
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "raw_contacts JOIN data ON(data.raw_contact_id=raw_contacts._id AND (mimetype_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "data15"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " NOT NULL))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactAggregator;->dh:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 1938
    sget-object v4, Lcom/android/providers/contacts/ContactAggregator$PhotoIdQuery;->COLUMNS:[Ljava/lang/String;

    const-string v5, "contact_id=?"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/ContactAggregator;->dh:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1941
    const/4 v2, 0x0

    move v4, v10

    move-wide v6, v11

    move-wide v10, v13

    .line 1942
    :goto_1
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1943
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1944
    const/4 v3, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1945
    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    move v14, v3

    .line 1946
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v9}, Lcom/android/providers/contacts/ContactAggregator;->h(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;

    move-result-object v3

    .line 1950
    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->kf:Lcom/android/providers/contacts/PhotoPriorityResolver;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/providers/contacts/PhotoPriorityResolver;->O(Ljava/lang/String;)I

    move-result v5

    .line 1952
    if-nez v14, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v2, v4}, Lcom/android/providers/contacts/ContactAggregator;->a(Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;ILcom/android/providers/contacts/ContactAggregator$PhotoEntry;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v18

    if-eqz v18, :cond_7

    .line 1958
    :cond_2
    if-eqz v14, :cond_4

    .line 1964
    :goto_3
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1967
    const-wide/16 v2, -0x1

    cmp-long v2, v12, v2

    if-nez v2, :cond_5

    .line 1968
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactAggregator;->km:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 1973
    :goto_4
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-nez v2, :cond_6

    .line 1974
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactAggregator;->km:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 1979
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactAggregator;->km:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x3

    move-wide v0, v15

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1980
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactAggregator;->km:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1982
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aQ()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1983
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->bF()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v2

    move-wide v0, v15

    invoke-virtual {v2, v0, v1, v12, v13}, Lcom/android/providers/contacts/T9SearchSupport;->d(JJ)V

    goto/16 :goto_0

    .line 1945
    :cond_3
    const/4 v3, 0x0

    move v14, v3

    goto :goto_2

    :cond_4
    move-object v2, v3

    move-wide v6, v12

    move v3, v5

    move-wide v4, v8

    :goto_6
    move-wide v10, v6

    move-wide v6, v4

    move v4, v3

    .line 1962
    goto/16 :goto_1

    .line 1964
    :catchall_0
    move-exception v2

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1970
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactAggregator;->km:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_4

    .line 1976
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactAggregator;->km:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_5

    :cond_7
    move v3, v4

    move-wide v4, v6

    move-wide v6, v10

    goto :goto_6

    :cond_8
    move-wide v8, v6

    move-wide v12, v10

    goto :goto_3
.end method

.method public i(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2066
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->g(J)J

    move-result-wide v0

    .line 2067
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 2072
    :goto_0
    return-void

    .line 2071
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->j(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mEnabled:Z

    return v0
.end method

.method public j(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x2

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2075
    .line 2077
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kK:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->clear()V

    .line 2079
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->dh:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    .line 2080
    const-string v1, "view_raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$DisplayNameQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "contact_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->dh:[Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move v7, v9

    .line 2083
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2084
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 2085
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2086
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 2087
    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2088
    const/4 v5, 0x5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2090
    iget-object v6, p0, Lcom/android/providers/contacts/ContactAggregator;->db:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v6, v5}, Lcom/android/providers/contacts/ContactsProvider2;->ah(Ljava/lang/String;)Z

    move-result v5

    if-eqz v0, :cond_0

    move v6, v8

    :goto_1
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/ContactAggregator;->a(JLjava/lang/String;IZZ)V

    .line 2096
    const/4 v0, 0x4

    invoke-interface {v10, v0}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    or-int/2addr v0, v7

    move v7, v0

    .line 2097
    goto :goto_0

    :cond_0
    move v6, v9

    .line 2090
    goto :goto_1

    .line 2099
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2102
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kK:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-wide v0, v0, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->pS:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 2103
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kn:Landroid/database/sqlite/SQLiteStatement;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->kK:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-wide v1, v1, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->pS:J

    invoke-virtual {v0, v8, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2104
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kn:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v11, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2105
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kn:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2108
    :cond_2
    if-eqz v7, :cond_3

    .line 2109
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->r(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 2112
    :cond_3
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aQ()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2113
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->bF()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/providers/contacts/T9SearchSupport;->n(J)V

    .line 2115
    :cond_4
    return-void

    .line 2099
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public k(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 2124
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->g(J)J

    move-result-wide v0

    .line 2125
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 2146
    :goto_0
    return-void

    .line 2129
    :cond_0
    const-string v2, "UPDATE contacts SET has_phone_number=(SELECT (CASE WHEN COUNT(*)=0 THEN 0 ELSE 1 END) FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetype_id=? AND data1 NOT NULL AND contact_id=?) WHERE _id=?"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 2139
    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2140
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2141
    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2142
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2144
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v0
.end method

.method public l(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2149
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->g(J)J

    move-result-wide v0

    .line 2150
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 2155
    :goto_0
    return-void

    .line 2154
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->n(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public m(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2158
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->g(J)J

    move-result-wide v0

    .line 2159
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 2164
    :goto_0
    return-void

    .line 2163
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->o(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public q(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2202
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->g(J)J

    move-result-wide v0

    .line 2203
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 2208
    :goto_0
    return-void

    .line 2207
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->r(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public r(J)V
    .locals 5
    .parameter

    .prologue
    .line 668
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 669
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "UPDATE contacts SET status_update_id=(SELECT data._id FROM status_updates JOIN data   ON (status_update_data_id=data._id) JOIN raw_contacts   ON (data.raw_contact_id=raw_contacts._id) WHERE contact_id=? ORDER BY status_ts DESC,status LIMIT 1) WHERE contacts._id=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 671
    return-void
.end method

.method protected s(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 2224
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2225
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->dh:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2226
    const-string v1, "view_raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$LookupKeyQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "contact_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->dh:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2229
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2230
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v8

    invoke-static/range {v0 .. v6}, Lcom/android/providers/contacts/ContactLookupKey;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2238
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2240
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public s(J)V
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 914
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 915
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->b(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v1

    .line 916
    if-eqz v1, :cond_0

    .line 917
    invoke-direct {p0, v0, p1, p2}, Lcom/android/providers/contacts/ContactAggregator;->e(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 950
    :goto_0
    return-void

    .line 921
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->dh:[Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 922
    const-string v1, "raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$RawContactIdQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "contact_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->dh:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 925
    :cond_1
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 926
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 927
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->kJ:Lcom/android/providers/contacts/ContactMatcher;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactMatcher;->clear()V

    .line 929
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->kJ:Lcom/android/providers/contacts/ContactMatcher;

    invoke-direct {p0, v0, v3, v4, v1}, Lcom/android/providers/contacts/ContactAggregator;->c(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 930
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->kJ:Lcom/android/providers/contacts/ContactMatcher;

    invoke-direct {p0, v0, v3, v4, v1}, Lcom/android/providers/contacts/ContactAggregator;->d(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 931
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->kJ:Lcom/android/providers/contacts/ContactMatcher;

    const/16 v5, 0x46

    invoke-virtual {v1, v5}, Lcom/android/providers/contacts/ContactMatcher;->aD(I)Ljava/util/List;

    move-result-object v1

    .line 933
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 934
    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->bT()J

    move-result-wide v6

    invoke-direct {p0, v0, v6, v7}, Lcom/android/providers/contacts/ContactAggregator;->e(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 947
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 937
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->kJ:Lcom/android/providers/contacts/ContactMatcher;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactMatcher;->clear()V

    .line 938
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->kJ:Lcom/android/providers/contacts/ContactMatcher;

    invoke-direct {p0, v0, v3, v4, v1}, Lcom/android/providers/contacts/ContactAggregator;->e(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 939
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->kJ:Lcom/android/providers/contacts/ContactMatcher;

    invoke-direct {p0, v0, v3, v4, v1}, Lcom/android/providers/contacts/ContactAggregator;->f(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 940
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->kJ:Lcom/android/providers/contacts/ContactMatcher;

    const/16 v3, 0x32

    invoke-virtual {v1, v3}, Lcom/android/providers/contacts/ContactMatcher;->aD(I)Ljava/util/List;

    move-result-object v1

    .line 942
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 943
    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->bT()J

    move-result-wide v4

    invoke-direct {p0, v0, v4, v5}, Lcom/android/providers/contacts/ContactAggregator;->e(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 947
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 394
    iput-boolean p1, p0, Lcom/android/providers/contacts/ContactAggregator;->mEnabled:Z

    .line 395
    return-void
.end method

.method protected u(J)V
    .locals 4
    .parameter

    .prologue
    .line 2248
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->g(J)J

    move-result-wide v0

    .line 2249
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 2255
    :goto_0
    return-void

    .line 2253
    :cond_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->kr:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2254
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->kr:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0
.end method
