.class public Lcom/android/providers/contacts/LegacyContactImporter;
.super Ljava/lang/Object;
.source "LegacyContactImporter.java"


# instance fields
.field private aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private final db:Lcom/android/providers/contacts/ContactsProvider2;

.field private iA:J

.field private iB:J

.field private iC:J

.field private iD:J

.field private iE:J

.field private iF:J

.field private iG:J

.field private iH:J

.field private iI:J

.field private iJ:J

.field private final ir:Lcom/android/providers/contacts/NameLookupBuilder;

.field private is:Landroid/content/ContentValues;

.field private iu:Z

.field private iv:Landroid/database/sqlite/SQLiteDatabase;

.field private iw:Landroid/database/sqlite/SQLiteDatabase;

.field private ix:Lcom/android/providers/contacts/NameSplitter;

.field private iy:I

.field private iz:I

.field private final mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->is:Landroid/content/ContentValues;

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iu:Z

    .line 102
    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iJ:J

    .line 105
    iput-object p1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->db:Lcom/android/providers/contacts/ContactsProvider2;

    .line 107
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->db:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mResolver:Landroid/content/ContentResolver;

    .line 108
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->db:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->fO()Lcom/android/providers/contacts/NameLookupBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->ir:Lcom/android/providers/contacts/NameLookupBuilder;

    .line 109
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteStatement;)J
    .locals 4
    .parameter

    .prologue
    .line 1296
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 1297
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1298
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Insert failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1301
    :cond_0
    iget v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iy:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iy:I

    .line 1302
    iget v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iy:I

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_1

    .line 1303
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iw:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1304
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iw:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1305
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iw:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1306
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iy:I

    .line 1308
    :cond_1
    return-wide v0
.end method

.method private a(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x7

    .line 293
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 295
    invoke-virtual {p2, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 296
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v4, v0}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 297
    const/4 v0, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 298
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v5, v0}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 299
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 300
    const/4 v0, 0x6

    const-wide/16 v1, 0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 302
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    invoke-direct {p0, p2, v3, v0}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 305
    const/16 v0, 0x8

    const-string v1, "com.google"

    invoke-direct {p0, p2, v0, v1}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 306
    const/16 v0, 0x9

    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 312
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;)J

    .line 313
    return-void

    .line 308
    :cond_0
    invoke-virtual {p2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 309
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 310
    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0
.end method

.method private a(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1063
    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1084
    :goto_0
    return-void

    .line 1067
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1069
    invoke-virtual {p2, v4, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1070
    iget-wide v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iH:J

    invoke-virtual {p2, v5, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1071
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-virtual {p2, v6, v2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 1073
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1074
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1075
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v7, v2}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 1080
    :goto_1
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;)J

    move-result-wide v2

    .line 1081
    invoke-virtual {p3, v4, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1082
    invoke-virtual {p3, v5, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1083
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0

    .line 1077
    :cond_1
    invoke-virtual {p2, v7}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1
.end method

.method private a(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 978
    const-wide/16 v1, -0x1

    .line 979
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 980
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 981
    const/4 v0, 0x0

    .line 982
    if-eqz v5, :cond_0

    .line 983
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 985
    :cond_0
    const/4 v6, 0x1

    invoke-virtual {p2, v6, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 986
    const/4 v6, 0x2

    iget-wide v7, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iD:J

    invoke-virtual {p2, v6, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 987
    const/4 v6, 0x3

    const/4 v7, 0x4

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p2, v6, v7}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 988
    const/4 v6, 0x4

    const/4 v7, 0x4

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p2, v6, v7}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 989
    const/4 v6, 0x5

    invoke-direct {p0, p2, v6, v5}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 990
    const/4 v6, 0x6

    const/4 v7, 0x1

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p2, v6, v7}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 991
    const/4 v6, 0x7

    const/4 v7, 0x3

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p2, v6, v7}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 992
    const/16 v6, 0x8

    invoke-direct {p0, p2, v6, v0}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 994
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;)J

    move-result-wide v6

    .line 995
    if-eqz v0, :cond_1

    .line 996
    const/4 v8, 0x1

    invoke-virtual {p3, v8, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 997
    const/4 v8, 0x2

    invoke-virtual {p3, v8, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 998
    const/4 v6, 0x3

    invoke-virtual {p3, v6, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 999
    const/4 v0, 0x4

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v0, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1001
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;)J

    .line 1003
    cmp-long v0, v1, v3

    if-eqz v0, :cond_1

    .line 1005
    const/4 v0, 0x1

    invoke-virtual {p4, v0, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1006
    invoke-virtual {p4}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1009
    :cond_1
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1288
    if-nez p3, :cond_0

    .line 1289
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 1293
    :goto_0
    return-void

    .line 1291
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private b(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)J
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/16 v7, 0xd

    const/16 v6, 0xc

    const/16 v5, 0xb

    .line 536
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 537
    invoke-virtual {p2, v8, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 538
    const/4 v2, 0x2

    invoke-virtual {p2, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 539
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v9, v2}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 541
    const/4 v2, 0x4

    const/16 v3, 0xf

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v2, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 543
    const/4 v2, 0x5

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {p2, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 545
    const/4 v2, 0x6

    const/16 v3, 0xa

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {p2, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 547
    const/4 v2, 0x7

    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {p2, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 549
    const/16 v2, 0x8

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {p2, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 551
    const/16 v2, 0x9

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v2, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 553
    const/16 v2, 0xa

    const/16 v3, 0xe

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v2, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 555
    const/16 v2, 0xe

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v2, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 558
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 559
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 560
    invoke-direct {p0, p2, v5, v2}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 561
    const-string v2, "com.google"

    invoke-direct {p0, p2, v6, v2}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 562
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v7, v2}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 568
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;)J

    .line 569
    return-wide v0

    .line 564
    :cond_0
    invoke-virtual {p2, v5}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 565
    invoke-virtual {p2, v6}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 566
    invoke-virtual {p2, v7}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0
.end method

.method private c(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    .line 573
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 574
    const/4 v2, 0x1

    invoke-virtual {p2, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 575
    const/4 v2, 0x2

    const/16 v3, 0x9

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v2, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 577
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p2, v4, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 579
    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p2, v5, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 581
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p2, v6, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 583
    const/4 v2, 0x6

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {p2, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 585
    const/4 v2, 0x7

    invoke-virtual {p2, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 587
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;)J

    .line 588
    return-void
.end method

.method private cK()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iv:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    .line 162
    const/16 v1, 0x4e

    if-ge v0, v1, :cond_0

    .line 220
    :goto_0
    return-void

    .line 166
    :cond_0
    const/16 v1, 0x50

    if-ge v0, v1, :cond_1

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iu:Z

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->db:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->ey()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 171
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iw:Landroid/database/sqlite/SQLiteDatabase;

    .line 173
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iA:J

    .line 174
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "vnd.android.cursor.item/note"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iB:J

    .line 175
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iC:J

    .line 176
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iD:J

    .line 177
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iE:J

    .line 178
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "vnd.android.cursor.item/im"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iF:J

    .line 179
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iG:J

    .line 180
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iH:J

    .line 181
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iI:J

    .line 184
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->db:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->fN()Lcom/android/providers/contacts/NameSplitter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->ix:Lcom/android/providers/contacts/NameSplitter;

    .line 186
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iw:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 188
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->cL()V

    .line 196
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->db:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->aP()V

    .line 198
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->cM()V

    .line 199
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->cN()V

    .line 200
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->cO()V

    .line 201
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->cQ()V

    .line 202
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->cP()V

    .line 203
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->cR()V

    .line 204
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->cS()V

    .line 205
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->cU()V

    .line 210
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->cV()V

    .line 212
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aG()V

    .line 214
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iw:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iw:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 219
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->cT()V

    goto/16 :goto_0

    .line 216
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iw:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private cL()V
    .locals 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iv:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT COUNT(*) FROM settings WHERE key=\'TEST\'"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 230
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 231
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Testing import failure."

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    return-void
.end method

.method private cM()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 279
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iw:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO groups(_id,title,notes,system_id,dirty,group_visible,account_name,account_type,sourceid) VALUES (?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v8

    .line 280
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iv:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "groups"

    sget-object v2, Lcom/android/providers/contacts/LegacyContactImporter$GroupsQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 283
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-direct {p0, v1, v8}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 288
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v0

    .line 287
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 288
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 290
    return-void
.end method

.method private cN()V
    .locals 12

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iw:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO raw_contacts(_id,contact_id,custom_ringtone,dirty,last_time_contacted,send_to_voicemail,starred,times_contacted,sync1,sync2,account_name,account_type,sourceid,display_name) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v8

    .line 490
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iw:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO contacts(_id,custom_ringtone,last_time_contacted,send_to_voicemail,starred,times_contacted,name_raw_contact_id) VALUES (?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    .line 491
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iw:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO data(raw_contact_id,mimetype_id,data1,data4,data2,data5,data3,data6,data10,data9,data8,data7,data11) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v10

    .line 493
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iw:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO data(raw_contact_id,mimetype_id,data1) VALUES (?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v11

    .line 495
    :try_start_0
    iget-boolean v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iu:Z

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/providers/contacts/LegacyContactImporter$PeopleQuery;->vO:[Ljava/lang/String;

    .line 498
    :goto_0
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iv:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "people"

    const-string v3, "name IS NULL"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 501
    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    invoke-direct {p0, v1, v8}, Lcom/android/providers/contacts/LegacyContactImporter;->b(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)J

    .line 503
    invoke-direct {p0, v1, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->c(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V

    .line 504
    invoke-direct {p0, v1, v11}, Lcom/android/providers/contacts/LegacyContactImporter;->e(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V

    .line 505
    iget v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iz:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iz:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 508
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 528
    :catchall_1
    move-exception v0

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 529
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 530
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 531
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v0

    .line 495
    :cond_0
    :try_start_3
    sget-object v2, Lcom/android/providers/contacts/LegacyContactImporter$PeopleQuery;->vN:[Ljava/lang/String;

    goto :goto_0

    .line 508
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 511
    iget-boolean v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iu:Z

    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/providers/contacts/LegacyContactImporter$PeopleQuery;->vQ:[Ljava/lang/String;

    .line 514
    :goto_2
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iv:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "people"

    const-string v3, "name IS NOT NULL"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    .line 517
    :goto_3
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 518
    invoke-direct {p0, v1, v8}, Lcom/android/providers/contacts/LegacyContactImporter;->b(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)J

    .line 519
    invoke-direct {p0, v1, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->c(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V

    .line 520
    invoke-direct {p0, v1, v10}, Lcom/android/providers/contacts/LegacyContactImporter;->d(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V

    .line 521
    invoke-direct {p0, v1, v11}, Lcom/android/providers/contacts/LegacyContactImporter;->e(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V

    .line 522
    iget v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iz:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iz:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    .line 525
    :catchall_2
    move-exception v0

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 511
    :cond_2
    sget-object v2, Lcom/android/providers/contacts/LegacyContactImporter$PeopleQuery;->vP:[Ljava/lang/String;

    goto :goto_2

    .line 525
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 528
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 529
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 530
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 531
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 533
    return-void
.end method

.method private cO()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 712
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iw:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO data(raw_contact_id,mimetype_id,is_primary,is_super_primary,data1,data4,data2,data3) VALUES (?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v8

    .line 713
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iv:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "organizations"

    sget-object v2, Lcom/android/providers/contacts/LegacyContactImporter$OrganizationsQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 716
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    invoke-direct {p0, v1, v8}, Lcom/android/providers/contacts/LegacyContactImporter;->f(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 720
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 721
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v0

    .line 720
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 721
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 723
    return-void
.end method

.method private cP()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 822
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iw:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO data(raw_contact_id,mimetype_id,is_primary,is_super_primary,data1,data2,data3,data14) VALUES (?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v8

    .line 823
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iw:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO data(raw_contact_id,mimetype_id,is_primary,is_super_primary,data1,data2,data3,data14) VALUES (?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    .line 824
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iw:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO data(raw_contact_id,mimetype_id,is_primary,is_super_primary,data1,data2,data3,data14) VALUES (?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v10

    .line 825
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iv:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "contact_methods"

    sget-object v2, Lcom/android/providers/contacts/LegacyContactImporter$ContactMethodsQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 828
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 830
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 832
    :pswitch_0
    invoke-direct {p0, v1, v8}, Lcom/android/providers/contacts/LegacyContactImporter;->g(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 845
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 846
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 847
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 848
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v0

    .line 836
    :pswitch_1
    :try_start_1
    invoke-direct {p0, v1, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->h(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V

    goto :goto_0

    .line 840
    :pswitch_2
    invoke-direct {p0, v1, v10}, Lcom/android/providers/contacts/LegacyContactImporter;->i(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 845
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 846
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 847
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 848
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 851
    return-void

    .line 830
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private cQ()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 957
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iw:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO data(raw_contact_id,mimetype_id,is_primary,is_super_primary,data1,data2,data3,data4) VALUES (?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v8

    .line 958
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iw:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO phone_lookup(raw_contact_id,data_id,normalized_number,min_match) VALUES (?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    .line 960
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iw:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE contacts SET has_phone_number=1 WHERE _id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v10

    .line 962
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iv:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "phones"

    sget-object v2, Lcom/android/providers/contacts/LegacyContactImporter$PhonesQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 965
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    invoke-direct {p0, v1, v8, v9, v10}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 969
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 970
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 971
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 972
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v0

    .line 969
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 970
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 971
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 972
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 974
    return-void
.end method

.method private cR()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 1047
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iw:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO data(raw_contact_id,mimetype_id,data15,data_sync1) VALUES (?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v8

    .line 1048
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iw:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE contacts SET photo_id=? WHERE _id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    .line 1049
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iv:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "photos"

    sget-object v2, Lcom/android/providers/contacts/LegacyContactImporter$PhotosQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1052
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1053
    invoke-direct {p0, v1, v8, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1056
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1057
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1058
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v0

    .line 1056
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1057
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1058
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1060
    return-void
.end method

.method private cS()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 1112
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iw:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO data(raw_contact_id,mimetype_id,data1) VALUES (?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v8

    .line 1113
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iv:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "groupmembership"

    sget-object v2, Lcom/android/providers/contacts/LegacyContactImporter$GroupMembershipQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1116
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1117
    invoke-direct {p0, v1, v8}, Lcom/android/providers/contacts/LegacyContactImporter;->j(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1120
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1121
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v0

    .line 1120
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1121
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1123
    return-void
.end method

.method private cT()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1184
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iv:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "calls"

    sget-object v2, Lcom/android/providers/contacts/LegacyContactImporter$CallsQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1187
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1188
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/LegacyContactImporter;->d(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1191
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1193
    return-void
.end method

.method private cU()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1216
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1219
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1220
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1221
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v4, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iw:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1222
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->db:Lcom/android/providers/contacts/ContactsProvider2;

    iget-object v4, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iw:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->q(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1225
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1227
    return-void
.end method

.method private cV()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 1258
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iw:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO raw_contacts(account_name,account_type,sourceid,deleted,aggregation_mode) VALUES (?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v8

    .line 1259
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iv:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "_deleted_people"

    sget-object v2, Lcom/android/providers/contacts/LegacyContactImporter$DeletedPeopleQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1262
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1263
    invoke-direct {p0, v1, v8}, Lcom/android/providers/contacts/LegacyContactImporter;->k(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1266
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1267
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v0

    .line 1266
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1267
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1269
    return-void
.end method

.method private d(Landroid/database/Cursor;)V
    .locals 4
    .parameter

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->is:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1199
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->is:Landroid/content/ContentValues;

    const-string v1, "_id"

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1200
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->is:Landroid/content/ContentValues;

    const-string v1, "number"

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->is:Landroid/content/ContentValues;

    const-string v1, "date"

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1202
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->is:Landroid/content/ContentValues;

    const-string v1, "duration"

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1203
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->is:Landroid/content/ContentValues;

    const-string v1, "new"

    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1204
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->is:Landroid/content/ContentValues;

    const-string v1, "type"

    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1205
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->is:Landroid/content/ContentValues;

    const-string v1, "name"

    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->is:Landroid/content/ContentValues;

    const-string v1, "numberlabel"

    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->is:Landroid/content/ContentValues;

    const-string v1, "numbertype"

    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->is:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1212
    return-void
.end method

.method private d(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 591
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 592
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 598
    invoke-virtual {p2, v6, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 599
    const/4 v0, 0x2

    iget-wide v3, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iA:J

    invoke-virtual {p2, v0, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 600
    invoke-direct {p0, p2, v9, v5}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 602
    new-instance v7, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct {v7}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    .line 603
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->ix:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v0, v7, v5}, Lcom/android/providers/contacts/NameSplitter;->a(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V

    .line 605
    const/4 v0, 0x4

    invoke-virtual {v7}, Lcom/android/providers/contacts/NameSplitter$Name;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v0, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 607
    const/4 v0, 0x5

    invoke-virtual {v7}, Lcom/android/providers/contacts/NameSplitter$Name;->K()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v0, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 609
    const/4 v0, 0x6

    invoke-virtual {v7}, Lcom/android/providers/contacts/NameSplitter$Name;->L()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v0, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 611
    const/4 v0, 0x7

    invoke-virtual {v7}, Lcom/android/providers/contacts/NameSplitter$Name;->M()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v0, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 613
    const/16 v0, 0x8

    invoke-virtual {v7}, Lcom/android/providers/contacts/NameSplitter$Name;->N()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v0, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->ix:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v0, v7, v6, v6}, Lcom/android/providers/contacts/NameSplitter;->a(Lcom/android/providers/contacts/NameSplitter$Name;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 616
    invoke-direct {p0, p2, v9, v0}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 618
    iget-boolean v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iu:Z

    if-eqz v0, :cond_2

    .line 619
    const/16 v0, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 620
    if-eqz v0, :cond_2

    .line 621
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 622
    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 623
    iput-object v0, v7, Lcom/android/providers/contacts/NameSplitter$Name;->az:Ljava/lang/String;

    .line 631
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->ix:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v0, v7}, Lcom/android/providers/contacts/NameSplitter;->b(Lcom/android/providers/contacts/NameSplitter$Name;)V

    .line 633
    invoke-virtual {v7}, Lcom/android/providers/contacts/NameSplitter$Name;->O()I

    move-result v6

    .line 634
    const/16 v0, 0x9

    int-to-long v3, v6

    invoke-virtual {p2, v0, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 636
    const/16 v0, 0xa

    iget-object v3, v7, Lcom/android/providers/contacts/NameSplitter$Name;->az:Ljava/lang/String;

    invoke-direct {p0, p2, v0, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 638
    const/16 v0, 0xb

    iget-object v3, v7, Lcom/android/providers/contacts/NameSplitter$Name;->aA:Ljava/lang/String;

    invoke-direct {p0, p2, v0, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 640
    const/16 v0, 0xc

    iget-object v3, v7, Lcom/android/providers/contacts/NameSplitter$Name;->aB:Ljava/lang/String;

    invoke-direct {p0, p2, v0, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 642
    const/16 v0, 0xd

    iget v3, v7, Lcom/android/providers/contacts/NameSplitter$Name;->aC:I

    int-to-long v3, v3

    invoke-virtual {p2, v0, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 645
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;)J

    move-result-wide v3

    .line 647
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->ir:Lcom/android/providers/contacts/NameLookupBuilder;

    iget-object v8, p0, Lcom/android/providers/contacts/LegacyContactImporter;->ix:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v8, v6}, Lcom/android/providers/contacts/NameSplitter;->ap(I)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/NameLookupBuilder;->a(JJLjava/lang/String;I)V

    .line 650
    iget-object v0, v7, Lcom/android/providers/contacts/NameSplitter$Name;->az:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, v7, Lcom/android/providers/contacts/NameSplitter$Name;->aA:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, v7, Lcom/android/providers/contacts/NameSplitter$Name;->aB:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 653
    :cond_3
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v5, v7, Lcom/android/providers/contacts/NameSplitter$Name;->az:Ljava/lang/String;

    iget-object v6, v7, Lcom/android/providers/contacts/NameSplitter$Name;->aA:Ljava/lang/String;

    iget-object v7, v7, Lcom/android/providers/contacts/NameSplitter$Name;->aB:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 625
    :cond_4
    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lcom/android/providers/contacts/NameSplitter$Name;->az:Ljava/lang/String;

    .line 626
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/providers/contacts/NameSplitter$Name;->aB:Ljava/lang/String;

    goto :goto_1
.end method

.method private e(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    .line 661
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 663
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 672
    :goto_0
    return-void

    .line 667
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 668
    const/4 v3, 0x1

    invoke-virtual {p2, v3, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 669
    iget-wide v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iB:J

    invoke-virtual {p2, v4, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 670
    const/4 v1, 0x3

    invoke-direct {p0, p2, v1, v0}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 671
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;)J

    goto :goto_0
.end method

.method private f(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x3

    .line 726
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 727
    invoke-virtual {p2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 728
    iget-wide v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iC:J

    invoke-virtual {p2, v4, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 729
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v2, v0}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 730
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v5, v0}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 732
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v6, v0}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 733
    const/4 v0, 0x6

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 734
    const/4 v0, 0x7

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 735
    const/16 v0, 0x8

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 736
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;)J

    .line 737
    return-void
.end method

.method private g(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x6

    .line 854
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 855
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 857
    const/4 v0, 0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 858
    iget-wide v3, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iE:J

    invoke-virtual {p2, v7, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 859
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v8, v0}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 860
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v9, v0}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 861
    invoke-direct {p0, p2, v10, v5}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 862
    const/16 v0, 0x8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v0, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 863
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v6, v0}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 864
    const/4 v0, 0x7

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v0, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 866
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;)J

    move-result-wide v3

    .line 867
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->b(JJLjava/lang/String;)Ljava/lang/String;

    .line 868
    return-void
.end method

.method private h(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x6

    .line 871
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 873
    const/4 v2, 0x1

    invoke-virtual {p2, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 874
    iget-wide v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iF:J

    invoke-virtual {p2, v4, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 875
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v5, v0}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 876
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v6, v0}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 877
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v7, v0}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 878
    const/16 v0, 0x8

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 879
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v3, v0}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 880
    const/4 v0, 0x7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 881
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;)J

    .line 882
    return-void
.end method

.method private i(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x6

    .line 885
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 887
    const/4 v2, 0x1

    invoke-virtual {p2, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 888
    iget-wide v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iG:J

    invoke-virtual {p2, v4, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 889
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v5, v0}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 890
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v6, v0}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 892
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v7, v0}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 893
    const/16 v0, 0x8

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 894
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v3, v0}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 895
    const/4 v0, 0x7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 896
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;)J

    .line 897
    return-void
.end method

.method private j(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 15
    .parameter
    .parameter

    .prologue
    .line 1126
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1128
    const-wide/16 v9, 0x0

    .line 1129
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1130
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1131
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1132
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1134
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iw:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "groups"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const-string v4, "sourceid=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1138
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1139
    const/4 v1, 0x0

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 1142
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1145
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 1146
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1147
    const-string v2, "account_name"

    invoke-virtual {v1, v2, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    const-string v2, "account_type"

    const-string v3, "com.google"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    const-string v2, "group_visible"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1150
    const-string v2, "sourceid"

    invoke-virtual {v1, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iw:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "groups"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 1158
    :cond_0
    :goto_1
    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v11, v12}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1159
    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iI:J

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1160
    const/4 v3, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1161
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;)J

    .line 1162
    return-void

    .line 1142
    :catchall_0
    move-exception v1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1155
    :cond_1
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    goto :goto_1

    :cond_2
    move-wide v1, v9

    goto :goto_0

    :cond_3
    move-wide v1, v9

    goto :goto_1
.end method

.method private k(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1272
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1273
    if-nez v0, :cond_0

    .line 1285
    :goto_0
    return-void

    .line 1277
    :cond_0
    invoke-virtual {p2, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1278
    const/4 v0, 0x2

    const-string v1, "com.google"

    invoke-virtual {p2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1279
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 1281
    const/4 v0, 0x4

    const-wide/16 v1, 0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1282
    const/4 v0, 0x5

    const-wide/16 v1, 0x3

    invoke-virtual {p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1284
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyContactImporter;->a(Landroid/database/sqlite/SQLiteStatement;)J

    goto :goto_0
.end method


# virtual methods
.method public cI()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x400

    const-wide/16 v8, 0x5

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 112
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContext:Landroid/content/Context;

    const-string v3, "contacts.db"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 113
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 115
    const-string v1, "LegacyContactImporter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Legacy contacts database does not exist at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    :goto_0
    return v0

    .line 119
    :cond_1
    const-string v2, "LegacyContactImporter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Importing contacts from "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    .line 121
    :goto_1
    const/4 v2, 0x5

    if-ge v3, v2, :cond_4

    .line 123
    const/4 v2, 0x0

    const/4 v6, 0x1

    :try_start_0
    invoke-static {v4, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iv:Landroid/database/sqlite/SQLiteDatabase;

    .line 124
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->cK()V

    .line 125
    const-string v2, "LegacyContactImporter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Imported legacy contacts: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iz:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->db:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsProvider2;->dN()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iv:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iv:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 129
    :catch_0
    move-exception v2

    .line 130
    :try_start_1
    const-string v6, "LegacyContactImporter"

    const-string v7, "Database import exception. Will retry in 2000ms"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    const-wide/16 v6, 0x7d0

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iv:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_2

    .line 139
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iv:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 121
    :cond_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 138
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iv:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_3

    .line 139
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iv:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    throw v0

    .line 144
    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 145
    const-wide/16 v4, 0x4

    mul-long/2addr v2, v4

    div-long/2addr v2, v10

    div-long/2addr v2, v10

    iput-wide v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iJ:J

    .line 146
    iget-wide v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iJ:J

    cmp-long v0, v2, v8

    if-gez v0, :cond_5

    .line 147
    iput-wide v8, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iJ:J

    :cond_5
    move v0, v1

    .line 150
    goto/16 :goto_0
.end method

.method public cJ()J
    .locals 2

    .prologue
    .line 154
    iget-wide v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->iJ:J

    return-wide v0
.end method
