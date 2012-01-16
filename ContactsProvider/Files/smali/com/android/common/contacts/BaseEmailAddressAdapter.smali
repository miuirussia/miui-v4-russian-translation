.class public abstract Lcom/android/common/contacts/BaseEmailAddressAdapter;
.super Lcom/android/common/widget/CompositeCursorAdapter;
.source "BaseEmailAddressAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# instance fields
.field private iV:Z

.field private iW:I

.field private mAccount:Landroid/accounts/Account;

.field protected final mContentResolver:Landroid/content/ContentResolver;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic a(Lcom/android/common/contacts/BaseEmailAddressAdapter;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->e(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/database/Cursor;I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 555
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 556
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 557
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 558
    invoke-direct {p0, v1, p2}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->f(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 562
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/common/contacts/BaseEmailAddressAdapter;)Z
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->iV:Z

    return v0
.end method

.method static synthetic a(Lcom/android/common/contacts/BaseEmailAddressAdapter;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->iV:Z

    return p1
.end method

.method private aa(I)Z
    .locals 1
    .parameter

    .prologue
    .line 354
    invoke-virtual {p0, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->w(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    iget-boolean v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->rW:Z

    return v0
.end method

.method static synthetic b(Lcom/android/common/contacts/BaseEmailAddressAdapter;)I
    .locals 1
    .parameter

    .prologue
    .line 51
    iget v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->iW:I

    return v0
.end method

.method private b(ILandroid/database/Cursor;)Landroid/database/Cursor;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 529
    if-nez p2, :cond_1

    .line 530
    const/4 p2, 0x0

    .line 551
    :cond_0
    :goto_0
    return-object p2

    .line 533
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gt v0, v7, :cond_2

    invoke-direct {p0, p2, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->a(Landroid/database/Cursor;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    :cond_2
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$EmailQuery;->cq:[Ljava/lang/String;

    invoke-direct {v2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 540
    const/4 v0, -0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v0, v1

    .line 541
    :cond_3
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    if-ge v0, v7, :cond_4

    .line 542
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 543
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 544
    invoke-direct {p0, v4, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->f(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 545
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v1

    aput-object v4, v5, v6

    invoke-virtual {v2, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 546
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 549
    :cond_4
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    move-object p2, v2

    .line 551
    goto :goto_0
.end method

.method static synthetic c(Lcom/android/common/contacts/BaseEmailAddressAdapter;)Landroid/accounts/Account;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method private da()Landroid/database/Cursor;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 495
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "searching"

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 496
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, ""

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 497
    return-object v0
.end method

.method private final e(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 590
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "searching"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    const-string v0, ""

    .line 599
    :cond_0
    :goto_0
    return-object v0

    .line 594
    :cond_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 595
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 596
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 599
    new-instance v2, Landroid/text/util/Rfc822Token;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private f(Ljava/lang/String;I)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 570
    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->ag()I

    move-result v3

    move v2, v1

    .line 571
    :goto_0
    if-ge v2, v3, :cond_2

    .line 572
    if-eq v2, p2, :cond_1

    invoke-direct {p0, v2}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->aa(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 573
    invoke-virtual {p0, v2}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->x(I)Landroid/database/Cursor;

    move-result-object v4

    .line 574
    if-eqz v4, :cond_1

    .line 575
    const/4 v5, -0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 576
    :cond_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 577
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 578
    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 586
    :goto_1
    return v0

    .line 571
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 586
    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;ILandroid/database/Cursor;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->ag()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 503
    invoke-virtual {p0, p2}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->w(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    .line 508
    iget-boolean v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->rW:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->constraint:Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 509
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->rW:Z

    .line 510
    iget-object v1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 511
    invoke-direct {p0, p2, p3}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->b(ILandroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->a(ILandroid/database/Cursor;)V

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    if-eqz p3, :cond_0

    .line 516
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 519
    :cond_2
    if-eqz p3, :cond_0

    .line 520
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected a(Ljava/lang/CharSequence;Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 368
    if-eqz p2, :cond_5

    .line 369
    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 370
    const/4 v1, 0x0

    .line 371
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 372
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 373
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 377
    const-wide/16 v7, 0x1

    cmp-long v0, v5, v7

    if-eqz v0, :cond_0

    .line 381
    new-instance v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    invoke-direct {v0}, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;-><init>()V

    .line 382
    iput-wide v5, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->rU:J

    .line 383
    const/4 v2, 0x3

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->displayName:Ljava/lang/String;

    .line 384
    const/4 v2, 0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->i:Ljava/lang/String;

    .line 385
    const/4 v2, 0x2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->accountType:Ljava/lang/String;

    .line 386
    const/4 v2, 0x4

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 387
    const/4 v2, 0x5

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 388
    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    .line 390
    :try_start_0
    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 392
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->rV:Ljava/lang/String;

    .line 393
    iget-object v2, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->rV:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 394
    const-string v2, "BaseEmailAddressAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot resolve directory name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->i:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    move-object v1, v0

    .line 412
    goto/16 :goto_0

    .line 397
    :catch_0
    move-exception v2

    .line 398
    const-string v7, "BaseEmailAddressAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot resolve directory name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "@"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 410
    :cond_2
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_2

    .line 414
    :cond_3
    if-eqz v1, :cond_4

    .line 415
    const/4 v0, 0x1

    invoke-interface {v4, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 418
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    .line 419
    invoke-virtual {p0, v0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->a(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    goto :goto_3

    .line 423
    :cond_5
    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->ag()I

    move-result v2

    .line 428
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->b(Z)V

    .line 431
    if-eqz p3, :cond_6

    :try_start_1
    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->ag()I

    move-result v0

    if-lez v0, :cond_6

    .line 432
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p3}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->a(ILandroid/database/Cursor;)V

    .line 435
    :cond_6
    if-nez p3, :cond_8

    const/4 v0, 0x0

    .line 438
    :goto_4
    iget v1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->iW:I

    sub-int v3, v1, v0

    .line 442
    const/4 v0, 0x1

    move v1, v0

    :goto_5
    if-ge v1, v2, :cond_a

    .line 443
    invoke-virtual {p0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->w(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    .line 444
    iput-object p1, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->constraint:Ljava/lang/CharSequence;

    .line 446
    if-lez v3, :cond_9

    .line 447
    iget-boolean v4, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->rW:Z

    if-nez v4, :cond_7

    .line 448
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->rW:Z

    .line 449
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->a(ILandroid/database/Cursor;)V

    .line 442
    :cond_7
    :goto_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 435
    :cond_8
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_4

    .line 452
    :cond_9
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->rW:Z

    .line 453
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->a(ILandroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 457
    :catchall_0
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->b(Z)V

    throw v0

    :cond_a
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->b(Z)V

    .line 462
    const/4 v0, 0x1

    move v1, v0

    :goto_7
    if-ge v1, v2, :cond_e

    .line 463
    invoke-virtual {p0, v1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->w(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    .line 464
    iget-boolean v4, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->rW:Z

    if-eqz v4, :cond_d

    .line 465
    iget-object v4, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 466
    iget-object v4, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v1, v6, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 467
    iget-object v5, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 468
    iget-object v4, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->rX:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

    if-nez v4, :cond_b

    .line 469
    new-instance v4, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

    iget-wide v5, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->rU:J

    invoke-direct {v4, p0, v1, v5, v6}, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;-><init>(Lcom/android/common/contacts/BaseEmailAddressAdapter;IJ)V

    iput-object v4, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->rX:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

    .line 471
    :cond_b
    iget-object v4, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->rX:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

    invoke-virtual {v4, v3}, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->ak(I)V

    .line 472
    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->rX:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

    invoke-virtual {v0, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->filter(Ljava/lang/CharSequence;)V

    .line 462
    :cond_c
    :goto_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 474
    :cond_d
    iget-object v4, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->rX:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

    if-eqz v4, :cond_c

    .line 476
    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->rX:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 480
    :cond_e
    return-void
.end method

.method ab(I)V
    .locals 1
    .parameter

    .prologue
    .line 483
    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->ag()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 484
    invoke-virtual {p0, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->w(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;

    .line 485
    iget-boolean v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;->rW:Z

    if-eqz v0, :cond_0

    .line 486
    invoke-direct {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->da()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->a(ILandroid/database/Cursor;)V

    .line 489
    :cond_0
    return-void
.end method
