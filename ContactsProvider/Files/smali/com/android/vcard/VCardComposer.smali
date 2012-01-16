.class public Lcom/android/vcard/VCardComposer;
.super Ljava/lang/Object;
.source "VCardComposer.java"


# static fields
.field private static final cJ:[Ljava/lang/String;

.field private static final cz:Ljava/util/Map;


# instance fields
.field private final P:I

.field private final cA:Z

.field private cB:Z

.field private cC:Z

.field private cD:I

.field private cE:Landroid/net/Uri;

.field private final cF:Ljava/lang/String;

.field private cG:Z

.field private cH:Ljava/lang/String;

.field private cI:Z

.field private cK:Lcom/android/vcard/VCardPhoneNumberTranslationCallback;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardComposer;->cz:Ljava/util/Map;

    .line 122
    sget-object v0, Lcom/android/vcard/VCardComposer;->cz:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-AIM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/vcard/VCardComposer;->cz:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-MSN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/android/vcard/VCardComposer;->cz:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-YAHOO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/vcard/VCardComposer;->cz:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-ICQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/android/vcard/VCardComposer;->cz:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-JABBER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/android/vcard/VCardComposer;->cz:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-SKYPE-USERNAME"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/vcard/VCardComposer;->cJ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;ILjava/lang/String;Z)V

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;ILjava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 203
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const-string v1, "No error"

    iput-object v1, p0, Lcom/android/vcard/VCardComposer;->cH:Ljava/lang/String;

    .line 155
    iput-boolean v0, p0, Lcom/android/vcard/VCardComposer;->cI:Z

    .line 206
    iput p3, p0, Lcom/android/vcard/VCardComposer;->P:I

    .line 207
    iput-object p2, p0, Lcom/android/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    .line 209
    invoke-static {p3}, Lcom/android/vcard/VCardConfig;->v(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/vcard/VCardComposer;->cA:Z

    .line 211
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p4, "UTF-8"

    .line 212
    :cond_0
    invoke-static {p3}, Lcom/android/vcard/VCardConfig;->j(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "UTF-8"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 215
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/vcard/VCardComposer;->cA:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_6

    .line 217
    :cond_2
    const-string v0, "SHIFT_JIS"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 237
    iput-object p4, p0, Lcom/android/vcard/VCardComposer;->cF:Ljava/lang/String;

    .line 271
    :goto_1
    const-string v0, "VCardComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use the charset \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vcard/VCardComposer;->cF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void

    .line 212
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 242
    :cond_4
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 243
    const-string v0, "SHIFT_JIS"

    iput-object v0, p0, Lcom/android/vcard/VCardComposer;->cF:Ljava/lang/String;

    goto :goto_1

    .line 253
    :cond_5
    iput-object p4, p0, Lcom/android/vcard/VCardComposer;->cF:Ljava/lang/String;

    goto :goto_1

    .line 257
    :cond_6
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 258
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/android/vcard/VCardComposer;->cF:Ljava/lang/String;

    goto :goto_1

    .line 267
    :cond_7
    iput-object p4, p0, Lcom/android/vcard/VCardComposer;->cF:Ljava/lang/String;

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 495
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 502
    :try_start_0
    iget-object v1, p0, Lcom/android/vcard/VCardComposer;->cE:Landroid/net/Uri;

    .line 503
    const-string v0, "contact_id=?"

    .line 504
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    if-eqz p2, :cond_2

    .line 508
    const/4 v0, 0x0

    const/4 v2, 0x5

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    aput-object v5, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    const-string v3, "contact_id=?"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    aput-object v4, v2, v1

    const/4 v1, 0x4

    const/4 v3, 0x0

    aput-object v3, v2, v1

    invoke-virtual {p2, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/EntityIterator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v0

    .line 525
    :goto_0
    if-nez v1, :cond_3

    .line 526
    :try_start_2
    const-string v0, "VCardComposer"

    const-string v2, "EntityIterator is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string v0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 552
    if-eqz v1, :cond_0

    .line 553
    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    .line 557
    :cond_0
    :goto_1
    return-object v0

    .line 510
    :catch_0
    move-exception v0

    .line 511
    :try_start_3
    const-string v1, "VCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException has been thrown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 519
    goto :goto_0

    .line 513
    :catch_1
    move-exception v0

    .line 514
    const-string v1, "VCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalAccessException has been thrown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v6

    .line 519
    goto :goto_0

    .line 516
    :catch_2
    move-exception v0

    .line 517
    const-string v1, "VCardComposer"

    const-string v2, "InvocationTargetException has been thrown: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "InvocationTargetException has been thrown"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 552
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_1

    .line 553
    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    :cond_1
    throw v0

    .line 521
    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const-string v3, "contact_id=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v6

    move-object v1, v6

    goto :goto_0

    .line 530
    :cond_3
    :try_start_5
    invoke-interface {v1}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 531
    const-string v0, "VCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data does not exist. contactId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const-string v0, ""
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 552
    if-eqz v1, :cond_0

    .line 553
    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    goto/16 :goto_1

    .line 535
    :cond_4
    :try_start_6
    invoke-interface {v1}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 536
    invoke-interface {v1}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity;

    .line 537
    invoke-virtual {v0}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity$NamedContentValues;

    .line 538
    iget-object v3, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 539
    const-string v0, "mimetype"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 540
    if-eqz v4, :cond_5

    .line 541
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 543
    if-nez v0, :cond_6

    .line 544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 545
    invoke-interface {v7, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    :cond_6
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 552
    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_8

    .line 553
    invoke-interface {v1}, Landroid/content/EntityIterator;->close()V

    .line 557
    :cond_8
    invoke-virtual {p0, v7}, Lcom/android/vcard/VCardComposer;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 435
    iput-boolean v6, p0, Lcom/android/vcard/VCardComposer;->cC:Z

    .line 436
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 438
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 439
    const-string v0, "VCardComposer"

    const-string v1, "Cursor became null unexpectedly"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const-string v0, "Failed to get database information"

    iput-object v0, p0, Lcom/android/vcard/VCardComposer;->cH:Ljava/lang/String;

    move v0, v6

    .line 443
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private au()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 447
    iget-object v1, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    .line 452
    :cond_0
    invoke-direct {p0}, Lcom/android/vcard/VCardComposer;->ax()V

    .line 456
    :cond_1
    :goto_0
    return v0

    .line 455
    :cond_2
    iget-object v1, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/vcard/VCardComposer;->cD:I

    .line 456
    iget v1, p0, Lcom/android/vcard/VCardComposer;->cD:I

    if-ltz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private av()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 460
    iput-boolean v1, p0, Lcom/android/vcard/VCardComposer;->cG:Z

    .line 461
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vcard/VCardComposer;->cI:Z

    .line 462
    return v1
.end method

.method private ax()V
    .locals 4

    .prologue
    .line 614
    iget-boolean v0, p0, Lcom/android/vcard/VCardComposer;->cC:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 616
    :try_start_0
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 622
    :cond_0
    return-void

    .line 617
    :catch_0
    move-exception v0

    .line 618
    const-string v1, "VCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteException on Cursor#close(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private c(Landroid/net/Uri;)Z
    .locals 2
    .parameter

    .prologue
    .line 422
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/android/vcard/VCardComposer;->cE:Landroid/net/Uri;

    .line 425
    iget-boolean v0, p0, Lcom/android/vcard/VCardComposer;->cG:Z

    if-eqz v0, :cond_1

    .line 426
    const-string v0, "VCardComposer"

    const-string v1, "init() is already called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/4 v0, 0x0

    .line 429
    :goto_1
    return v0

    .line 422
    :cond_0
    sget-object p1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 429
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/android/vcard/VCardComposer;->cA:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/vcard/VCardComposer;->cB:Z

    if-nez v0, :cond_0

    .line 477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vcard/VCardComposer;->cB:Z

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/vcard/VCardComposer;->cD:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/vcard/VCardComposer;->a(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    .line 487
    iget-object v1, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 488
    const-string v1, "VCardComposer"

    const-string v2, "Cursor#moveToNext() returned false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_1
    return-object v0
.end method

.method public a(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 583
    if-nez p1, :cond_0

    .line 584
    const-string v0, "VCardComposer"

    const-string v1, "The given map is null. Ignore and return empty String"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const-string v0, ""

    .line 604
    :goto_0
    return-object v0

    .line 587
    :cond_0
    new-instance v1, Lcom/android/vcard/VCardBuilder;

    iget v0, p0, Lcom/android/vcard/VCardComposer;->P:I

    iget-object v2, p0, Lcom/android/vcard/VCardComposer;->cF:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/android/vcard/VCardBuilder;-><init>(ILjava/lang/String;)V

    .line 588
    const-string v0, "vnd.android.cursor.item/name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/android/vcard/VCardBuilder;->c(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v2

    const-string v0, "vnd.android.cursor.item/nickname"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/android/vcard/VCardBuilder;->d(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v2

    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v3, p0, Lcom/android/vcard/VCardComposer;->cK:Lcom/android/vcard/VCardPhoneNumberTranslationCallback;

    invoke-virtual {v2, v0, v3}, Lcom/android/vcard/VCardBuilder;->a(Ljava/util/List;Lcom/android/vcard/VCardPhoneNumberTranslationCallback;)Lcom/android/vcard/VCardBuilder;

    move-result-object v2

    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/android/vcard/VCardBuilder;->e(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v2

    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/android/vcard/VCardBuilder;->f(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v2

    const-string v0, "vnd.android.cursor.item/organization"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/android/vcard/VCardBuilder;->k(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v2

    const-string v0, "vnd.android.cursor.item/website"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/android/vcard/VCardBuilder;->j(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 596
    iget v0, p0, Lcom/android/vcard/VCardComposer;->P:I

    const/high16 v2, 0x80

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    .line 597
    const-string v0, "vnd.android.cursor.item/photo"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/android/vcard/VCardBuilder;->l(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 599
    :cond_1
    const-string v0, "vnd.android.cursor.item/note"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/android/vcard/VCardBuilder;->m(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v2

    const-string v0, "vnd.android.cursor.item/contact_event"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/android/vcard/VCardBuilder;->n(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v2

    const-string v0, "vnd.android.cursor.item/im"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/android/vcard/VCardBuilder;->i(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v2

    const-string v0, "vnd.android.cursor.item/sip_address"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/android/vcard/VCardBuilder;->p(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v2

    const-string v0, "vnd.android.cursor.item/relation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v2, v0}, Lcom/android/vcard/VCardBuilder;->o(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 604
    invoke-virtual {v1}, Lcom/android/vcard/VCardBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 342
    sget-object v2, Lcom/android/vcard/VCardComposer;->cJ:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/vcard/VCardComposer;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 386
    const-string v1, "com.android.contacts"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 388
    const-string v1, "The Uri vCard composer received is not supported by the composer."

    iput-object v1, p0, Lcom/android/vcard/VCardComposer;->cH:Ljava/lang/String;

    .line 402
    :cond_0
    :goto_0
    return v0

    .line 392
    :cond_1
    invoke-direct {p0, p6}, Lcom/android/vcard/VCardComposer;->c(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    invoke-direct/range {p0 .. p5}, Lcom/android/vcard/VCardComposer;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    invoke-direct {p0}, Lcom/android/vcard/VCardComposer;->au()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    invoke-direct {p0}, Lcom/android/vcard/VCardComposer;->av()Z

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 314
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/vcard/VCardComposer;->cJ:[Ljava/lang/String;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/vcard/VCardComposer;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public aw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardComposer;->a(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 627
    :try_start_0
    iget-boolean v0, p0, Lcom/android/vcard/VCardComposer;->cI:Z

    if-nez v0, :cond_0

    .line 628
    const-string v0, "VCardComposer"

    const-string v1, "finalized() is called before terminate() being called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 633
    return-void

    .line 631
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 642
    const-string v0, "VCardComposer"

    const-string v1, "This object is not ready yet."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const/4 v0, 0x0

    .line 645
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public init()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 284
    invoke-virtual {p0, v0, v0}, Lcom/android/vcard/VCardComposer;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAfterLast()Z
    .locals 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 654
    const-string v0, "VCardComposer"

    const-string v1, "This object is not ready yet."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/4 v0, 0x0

    .line 657
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    goto :goto_0
.end method

.method public terminate()V
    .locals 1

    .prologue
    .line 609
    invoke-direct {p0}, Lcom/android/vcard/VCardComposer;->ax()V

    .line 610
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vcard/VCardComposer;->cI:Z

    .line 611
    return-void
.end method
