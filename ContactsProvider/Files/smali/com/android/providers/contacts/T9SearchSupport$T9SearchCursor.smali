.class public Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;
.super Ljava/lang/Object;
.source "T9SearchSupport.java"

# interfaces
.implements Landroid/database/Cursor;


# instance fields
.field private mIndex:I

.field private qs:I

.field private qt:Ljava/util/ArrayList;

.field private qu:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 434
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 435
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qu:Ljava/util/ArrayList;

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qt:Ljava/util/ArrayList;

    .line 437
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    .line 438
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qs:I

    .line 439
    return-void
.end method

.method public constructor <init>(Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 444
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 445
    iget v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qs:I

    if-ne p2, v0, :cond_0

    .line 446
    iget-object v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qt:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qt:Ljava/util/ArrayList;

    .line 447
    iget-object v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qu:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qu:Ljava/util/ArrayList;

    .line 448
    iput p2, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qs:I

    .line 449
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    .line 453
    :goto_0
    return-void

    .line 451
    :cond_0
    iget-object v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qu:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->b(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/ArrayList;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 458
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 459
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->b(Ljava/util/ArrayList;I)V

    .line 460
    return-void
.end method

.method public static a(Landroid/database/Cursor;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 365
    instance-of v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    if-nez v1, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-object v0

    .line 369
    :cond_1
    check-cast p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    .line 370
    check-cast p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    .line 372
    iget v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qs:I

    iget v2, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qs:I

    if-ne v1, v2, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 377
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    invoke-direct {v0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;-><init>()V

    goto :goto_0

    .line 380
    :cond_2
    new-instance v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;

    invoke-direct {v1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;-><init>()V

    .line 381
    iget v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qs:I

    iput v0, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qs:I

    .line 382
    iget v0, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qs:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    .line 383
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 384
    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qu:Ljava/util/ArrayList;

    monitor-enter v3

    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 386
    iget-object v5, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v5, v5, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->fs:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 387
    iget-object v5, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qt:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    iget-object v3, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qu:Ljava/util/ArrayList;

    monitor-enter v3

    .line 392
    :try_start_2
    iget-object v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 393
    iget-object v5, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v5, v5, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->fs:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 394
    iget-object v5, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qt:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 397
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_6
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    move-object v0, v1

    .line 416
    goto/16 :goto_0

    .line 399
    :cond_7
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 400
    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qu:Ljava/util/ArrayList;

    monitor-enter v3

    .line 401
    :try_start_4
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 402
    iget-object v5, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v5, v5, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->bs:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 403
    iget-object v5, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qt:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 406
    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_9
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 407
    iget-object v3, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qu:Ljava/util/ArrayList;

    monitor-enter v3

    .line 408
    :try_start_6
    iget-object v0, p1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 409
    iget-object v5, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v5, v5, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->bs:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 410
    iget-object v5, v1, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qt:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 413
    :catchall_3
    move-exception v0

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :cond_b
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3
.end method

.method private b(Ljava/util/ArrayList;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 466
    iput-object p1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qu:Ljava/util/ArrayList;

    .line 467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qt:Ljava/util/ArrayList;

    .line 468
    if-ne p2, v6, :cond_2

    .line 469
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 470
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qu:Ljava/util/ArrayList;

    monitor-enter v2

    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 472
    iget-object v4, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v4, v4, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->fs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 473
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qt:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 476
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 477
    iput v6, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qs:I

    .line 489
    :goto_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    .line 490
    return-void

    .line 479
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 480
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qu:Ljava/util/ArrayList;

    monitor-enter v2

    .line 481
    :try_start_2
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    .line 482
    iget-object v4, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v4, v4, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->bs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 483
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qt:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 486
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_4
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 487
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qs:I

    goto :goto_1
.end method

.method private fb()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 423
    iget v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    if-gez v1, :cond_0

    .line 424
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    .line 431
    :goto_0
    return v0

    .line 427
    :cond_0
    iget v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qt:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 428
    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    goto :goto_0

    .line 431
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 771
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 683
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT IMPLEMENTED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deactivate()V
    .locals 2

    .prologue
    .line 755
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT IMPLEMENTED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fc()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qu:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBlob(I)[B
    .locals 2
    .parameter

    .prologue
    .line 657
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT IMPLEMENTED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 649
    sget-object v0, Lmiui/provider/ExtraContacts$T9Query;->COLUMNS:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 608
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lmiui/provider/ExtraContacts$T9Query;->COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 609
    sget-object v1, Lmiui/provider/ExtraContacts$T9Query;->COLUMNS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    :goto_1
    return v0

    .line 608
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 613
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 621
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 622
    if-gez v0, :cond_0

    .line 623
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 625
    :cond_0
    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 633
    sget-object v0, Lmiui/provider/ExtraContacts$T9Query;->COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 641
    sget-object v0, Lmiui/provider/ExtraContacts$T9Query;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter

    .prologue
    .line 735
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT IMPLEMENTED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 829
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFloat(I)F
    .locals 2
    .parameter

    .prologue
    .line 727
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT IMPLEMENTED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInt(I)I
    .locals 2
    .parameter

    .prologue
    .line 699
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .locals 4
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 707
    sparse-switch p1, :sswitch_data_0

    .line 719
    :cond_0
    :goto_0
    return-wide v0

    .line 710
    :sswitch_0
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qt:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->fs:J

    goto :goto_0

    .line 712
    :sswitch_1
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qt:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vB:J

    goto :goto_0

    .line 714
    :sswitch_2
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qt:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qt:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vE:J

    goto :goto_0

    .line 717
    :sswitch_3
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qt:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->bs:J

    goto :goto_0

    .line 707
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0xb -> :sswitch_2
        0x14 -> :sswitch_3
    .end sparse-switch
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    return v0
.end method

.method public getShort(I)S
    .locals 2
    .parameter

    .prologue
    .line 691
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 665
    sparse-switch p1, :sswitch_data_0

    .line 675
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 667
    :sswitch_0
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qt:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->mData:Ljava/lang/String;

    goto :goto_0

    .line 669
    :sswitch_1
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qt:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vA:Ljava/lang/String;

    goto :goto_0

    .line 671
    :sswitch_2
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qt:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;

    invoke-virtual {v0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchNameResult;->ct()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 673
    :sswitch_3
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qt:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vD:Ljava/lang/String;

    goto :goto_0

    .line 665
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0xc -> :sswitch_2
        0xf -> :sswitch_3
    .end sparse-switch
.end method

.method public getType(I)I
    .locals 1
    .parameter

    .prologue
    .line 843
    const/4 v0, 0x0

    return v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 821
    const/4 v0, 0x0

    return v0
.end method

.method public isAfterLast()Z
    .locals 2

    .prologue
    .line 600
    iget v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBeforeFirst()Z
    .locals 1

    .prologue
    .line 592
    iget v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 778
    const/4 v0, 0x0

    return v0
.end method

.method public isFirst()Z
    .locals 1

    .prologue
    .line 576
    iget v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLast()Z
    .locals 2

    .prologue
    .line 584
    iget v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 743
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 747
    :goto_0
    return v0

    .line 745
    :pswitch_0
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qt:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;

    iget-object v0, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchResult;->pa:Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;

    iget-wide v2, v0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchItem;->vB:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 743
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public move(I)Z
    .locals 1
    .parameter

    .prologue
    .line 522
    iget v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    .line 523
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->fb()Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 540
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    .line 541
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->fb()Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->qt:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    .line 550
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->fb()Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    .line 559
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->fb()Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 1
    .parameter

    .prologue
    .line 531
    iput p1, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    .line 532
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->fb()Z

    move-result v0

    return v0
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 567
    iget v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->mIndex:I

    .line 568
    invoke-direct {p0}, Lcom/android/providers/contacts/T9SearchSupport$T9SearchCursor;->fb()Z

    move-result v0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 786
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 800
    return-void
.end method

.method public requery()Z
    .locals 2

    .prologue
    .line 763
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT IMPLEMENTED"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter

    .prologue
    .line 837
    const/4 v0, 0x0

    return-object v0
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 814
    return-void
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 793
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 807
    return-void
.end method
