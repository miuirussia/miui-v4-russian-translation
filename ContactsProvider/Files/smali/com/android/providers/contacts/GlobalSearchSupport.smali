.class public Lcom/android/providers/contacts/GlobalSearchSupport;
.super Ljava/lang/Object;
.source "GlobalSearchSupport.java"


# static fields
.field private static final he:[Ljava/lang/String;

.field private static final hf:[Ljava/lang/String;

.field private static final hg:Ljava/util/HashMap;


# instance fields
.field private final db:Lcom/android/providers/contacts/ContactsProvider2;

.field private final hh:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v4

    const-string v1, "suggest_text_2"

    aput-object v1, v0, v5

    const-string v1, "suggest_icon_1"

    aput-object v1, v0, v6

    const-string v1, "suggest_intent_data"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "suggest_intent_action"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_shortcut_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->he:[Ljava/lang/String;

    .line 72
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v4

    const-string v1, "suggest_text_2"

    aput-object v1, v0, v5

    const-string v1, "suggest_icon_1"

    aput-object v1, v0, v6

    const-string v1, "suggest_icon_2"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_shortcut_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "suggest_last_access_hint"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->hf:[Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->hg:Ljava/util/HashMap;

    .line 97
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->hg:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "calls._id AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->hg:Ljava/util/HashMap;

    const-string v1, "number"

    const-string v2, "number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->hg:Ljava/util/HashMap;

    const-string v1, "normalized_number"

    const-string v2, "CASE  WHEN normalized_number IS NULL THEN number ELSE normalized_number END  AS normalized_number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->hg:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->hg:Ljava/util/HashMap;

    const-string v1, "photo_id"

    const-string v2, "photo_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->hg:Ljava/util/HashMap;

    const-string v1, "contact_id"

    const-string v2, "contact_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->hg:Ljava/util/HashMap;

    const-string v1, "country_iso"

    const-string v2, "countryiso"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->hg:Ljava/util/HashMap;

    const-string v1, "voicemail_uri"

    const-string v2, "voicemail_uri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->hg:Ljava/util/HashMap;

    const-string v1, "call_count"

    const-string v2, "COUNT(calls._id)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->hg:Ljava/util/HashMap;

    const-string v1, "missed_count"

    const-string v2, "SUM(type=3)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->hg:Ljava/util/HashMap;

    const-string v1, "is_new"

    const-string v2, "new"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->hg:Ljava/util/HashMap;

    const-string v1, "call_type"

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->hg:Ljava/util/HashMap;

    const-string v1, "call_date"

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->hg:Ljava/util/HashMap;

    const-string v1, "call_duration"

    const-string v2, "duration"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->hg:Ljava/util/HashMap;

    const-string v1, "firewall_type"

    const-string v2, "firewalltype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->hg:Ljava/util/HashMap;

    const-string v1, "fowarded_call"

    const-string v2, "forwarded_call"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->hg:Ljava/util/HashMap;

    const-string v1, "number_type"

    const-string v2, "number_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->hg:Ljava/util/HashMap;

    const-string v1, "key_type"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->hg:Ljava/util/HashMap;

    const-string v1, "match_detail"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->hg:Ljava/util/HashMap;

    const-string v1, "display_string"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/providers/contacts/GlobalSearchSupport;->hg:Ljava/util/HashMap;

    const-string v1, "data_id"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-void
.end method

.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 1
    .parameter

    .prologue
    .line 243
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->db:Lcom/android/providers/contacts/ContactsProvider2;

    .line 245
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->hh:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    .line 253
    return-void
.end method

.method private B(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 470
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->db:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 474
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 475
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    const v2, 0x1040434

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 477
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 478
    if-gez v3, :cond_0

    .line 479
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    :goto_0
    const v2, 0x108020c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    const-string v2, "android.provider.Contacts.SEARCH_SUGGESTION_DIAL_NUMBER_CLICKED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 491
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    const v3, 0x7f04000d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    const v0, 0x1080218

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    const-string v0, "android.provider.Contacts.SEARCH_SUGGESTION_CREATE_CONTACT_CLICKED"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    const-string v0, "_-1"

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/android/providers/contacts/GlobalSearchSupport;->he:[Ljava/lang/String;

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 500
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 501
    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 503
    return-object v0

    .line 482
    :cond_0
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private C(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 560
    if-nez p1, :cond_0

    move-object v0, v1

    .line 590
    :goto_0
    return-object v0

    .line 564
    :cond_0
    const/4 v0, 0x0

    .line 565
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 566
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 567
    if-ne v3, v4, :cond_1

    move-object v0, v1

    .line 568
    goto :goto_0

    .line 571
    :cond_1
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 572
    if-eq v1, v4, :cond_2

    .line 573
    add-int/lit8 v0, v1, 0x1

    .line 575
    :cond_2
    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 576
    if-eq v1, v4, :cond_5

    .line 577
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 578
    if-eq v1, v4, :cond_5

    .line 583
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 584
    :goto_2
    if-ge v0, v1, :cond_4

    .line 585
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 586
    if-eq v3, v5, :cond_3

    if-eq v3, v5, :cond_3

    .line 587
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 584
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 590
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
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
    .line 368
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 369
    invoke-virtual {v0, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v0, p3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 371
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 373
    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object/from16 v5, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 377
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->bF()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/android/providers/contacts/T9SearchSupport;->d(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 508
    new-instance v11, Landroid/database/MatrixCursor;

    if-eqz p2, :cond_5

    move-object v1, p2

    :goto_0
    invoke-direct {v11, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 511
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x1

    move v10, v1

    .line 512
    :goto_1
    const-string v1, "SELECT _id, lookup, photo_thumb_uri, display_name, (SELECT mode FROM agg_presence WHERE presence_contact_id=contacts._id) AS contact_presence, last_time_contacted"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    if-eqz v10, :cond_0

    .line 520
    const-string v1, ", snippet"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    :cond_0
    const-string v1, " FROM "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    const-string v1, "view_contacts"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    const-string v1, " AS contacts"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    if-eqz v10, :cond_1

    .line 526
    iget-object v1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->db:Lcom/android/providers/contacts/ContactsProvider2;

    const/4 v4, 0x1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u2026"

    const/4 v8, 0x5

    const/4 v9, 0x0

    move-object/from16 v3, p4

    invoke-virtual/range {v1 .. v9}, Lcom/android/providers/contacts/ContactsProvider2;->a(Ljava/lang/StringBuilder;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 530
    :cond_1
    if-eqz p3, :cond_2

    .line 531
    const-string v1, " WHERE "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    :cond_2
    const-string v1, " ORDER BY (CASE WHEN contacts.starred=1 THEN 0 ELSE 1 END), (CASE WHEN (strftime(\'%s\', \'now\') - contacts.last_time_contacted/1000) < 259200 THEN 0  WHEN (strftime(\'%s\', \'now\') - contacts.last_time_contacted/1000) < 2592000 THEN 1  ELSE 2 END),contacts.times_contacted DESC, contacts.display_name, contacts._id"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    if-eqz p5, :cond_3

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " LIMIT "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 538
    new-instance v3, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;-><init>(Lcom/android/providers/contacts/GlobalSearchSupport$1;)V

    .line 539
    move-object/from16 v0, p4

    iput-object v0, v3, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->filter:Ljava/lang/String;

    .line 541
    :goto_2
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 542
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->vf:J

    .line 543
    const/4 v1, 0x1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->vh:Ljava/lang/String;

    .line 544
    const/4 v1, 0x2

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->vg:Ljava/lang/String;

    .line 545
    const/4 v1, 0x3

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->vi:Ljava/lang/String;

    .line 546
    const/4 v1, 0x4

    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, -0x1

    :goto_3
    iput v1, v3, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->presence:I

    .line 547
    const/4 v1, 0x5

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->vm:Ljava/lang/String;

    .line 548
    if-eqz v10, :cond_4

    .line 549
    const/4 v1, 0x6

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/GlobalSearchSupport;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->vj:Ljava/lang/String;

    .line 551
    :cond_4
    invoke-virtual {v3, p2}, Lcom/android/providers/contacts/GlobalSearchSupport$SearchSuggestion;->k([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 554
    :catchall_0
    move-exception v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v1

    .line 508
    :cond_5
    sget-object v1, Lcom/android/providers/contacts/GlobalSearchSupport;->hf:[Ljava/lang/String;

    goto/16 :goto_0

    .line 511
    :cond_6
    const/4 v1, 0x0

    move v10, v1

    goto/16 :goto_1

    .line 546
    :cond_7
    const/4 v1, 0x4

    :try_start_1
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_3

    .line 554
    :cond_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 556
    return-object v11
.end method

.method static synthetic a(Lcom/android/providers/contacts/GlobalSearchSupport;)Lcom/android/providers/contacts/ContactsProvider2;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->db:Lcom/android/providers/contacts/ContactsProvider2;

    return-object v0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 346
    array-length v0, p4

    new-array v1, v0, [Ljava/lang/Object;

    .line 347
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    .line 349
    const/4 v0, 0x1

    :goto_0
    array-length v2, p4

    if-ge v0, v2, :cond_4

    .line 350
    aget-object v2, p4, v0

    const-string v3, "contact_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 349
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_0
    aget-object v2, p4, v0

    const-string v3, "number"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 353
    aput-object p2, v1, v0

    goto :goto_1

    .line 354
    :cond_1
    aget-object v2, p4, v0

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 355
    aput-object p3, v1, v0

    goto :goto_1

    .line 356
    :cond_2
    aget-object v2, p4, v0

    const-string v3, "call_count"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 357
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1

    .line 359
    :cond_3
    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_1

    .line 363
    :cond_4
    return-object v1
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 381
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->bF()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/android/providers/contacts/T9SearchSupport;->c(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 387
    const-string v2, "calls"

    sget-object v3, Lcom/android/providers/contacts/GlobalSearchSupport;->hg:Ljava/util/HashMap;

    const-string v7, "normalized_number"

    const-string v8, "date DESC"

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/providers/contacts/GlobalSearchSupport;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 390
    if-eqz v0, :cond_0

    .line 391
    iget-object v1, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->db:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lmiui/provider/ExtraContacts$SmartDialer;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 393
    :cond_0
    return-object v0
.end method

.method private b(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->db:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 334
    new-instance v1, Landroid/database/MatrixCursor;

    const/4 v2, 0x3

    invoke-direct {v1, p2, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 336
    const/4 v2, -0x7

    const v3, 0x7f04000d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3, p2}, Lcom/android/providers/contacts/GlobalSearchSupport;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 338
    const/4 v2, -0x6

    const v3, 0x7f04000f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, p1, v3, p2}, Lcom/android/providers/contacts/GlobalSearchSupport;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 340
    const/16 v2, -0x9

    const v3, 0x7f04000e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p1, v0, p2}, Lcom/android/providers/contacts/GlobalSearchSupport;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 342
    return-object v1
.end method

.method private c(Landroid/database/Cursor;)V
    .locals 0
    .parameter

    .prologue
    .line 424
    if-eqz p1, :cond_0

    .line 425
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 427
    :cond_0
    return-void
.end method

.method private isPhoneNumber(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->hh:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private m(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter

    .prologue
    .line 397
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/providers/contacts/GlobalSearchSupport$1;

    invoke-direct {v1, p0, p1}, Lcom/android/providers/contacts/GlobalSearchSupport$1;-><init>(Lcom/android/providers/contacts/GlobalSearchSupport;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 421
    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 259
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 261
    const-string v3, "(strftime(\'%s\', \'now\') - contacts.last_time_contacted/1000) < 2592000"

    move-object v4, v0

    .line 267
    :goto_0
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->db:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->gd()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v4}, Lcom/android/providers/contacts/GlobalSearchSupport;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    invoke-direct {p0, v4}, Lcom/android/providers/contacts/GlobalSearchSupport;->B(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 270
    :goto_1
    return-object v0

    .line 263
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    move-object v3, v0

    .line 264
    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v5, p4

    .line 270
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/GlobalSearchSupport;->a(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 277
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->bF()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/T9SearchSupport;->bG()V

    .line 280
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v3, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 281
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/GlobalSearchSupport;->b(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 329
    :cond_0
    :goto_0
    return-object v0

    .line 282
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "update_all_log_cached_contact_tag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/GlobalSearchSupport;->m(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 286
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/GlobalSearchSupport;->b(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 289
    :cond_2
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 292
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v2, 0x0

    aget-char v0, v0, v2

    const/16 v2, 0x23

    if-ne v0, v2, :cond_3

    .line 293
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p3, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 294
    const/4 v2, -0x8

    iget-object v3, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->db:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v3}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f04000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v1, v3, p3}, Lcom/android/providers/contacts/GlobalSearchSupport;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 299
    :cond_3
    if-eqz v1, :cond_5

    const-string v0, "#"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 301
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-direct {p0, p1, p3, v1, p6}, Lcom/android/providers/contacts/GlobalSearchSupport;->a(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 305
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v4, :cond_0

    .line 307
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/GlobalSearchSupport;->c(Landroid/database/Cursor;)V

    .line 308
    invoke-direct {p0, v1, p3}, Lcom/android/providers/contacts/GlobalSearchSupport;->b(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 311
    :cond_5
    invoke-direct {p0, p1, p3, v1, p6}, Lcom/android/providers/contacts/GlobalSearchSupport;->b(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_8

    .line 314
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/GlobalSearchSupport;->c(Landroid/database/Cursor;)V

    .line 315
    invoke-direct {p0, p1, p3, v1, p6}, Lcom/android/providers/contacts/GlobalSearchSupport;->a(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v4, :cond_0

    .line 320
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/GlobalSearchSupport;->c(Landroid/database/Cursor;)V

    .line 321
    invoke-direct {p0, v1, p3}, Lcom/android/providers/contacts/GlobalSearchSupport;->b(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    .line 323
    :cond_8
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v2, v4, :cond_0

    .line 325
    invoke-direct {p0, p1, p3, v1, p6}, Lcom/android/providers/contacts/GlobalSearchSupport;->a(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 326
    invoke-static {v0, v1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->a(Landroid/database/Cursor;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public c(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 447
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport;->db:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0, p1, p3}, Lcom/android/providers/contacts/ContactsProvider2;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 451
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contacts._id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/GlobalSearchSupport;->a(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 448
    :catch_0
    move-exception v0

    .line 449
    const-wide/16 v0, -0x1

    goto :goto_0
.end method
