.class public Lcom/android/vcard/VCardEntry$PostalData;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/vcard/VCardEntry$EntryElement;


# instance fields
.field private P:I

.field private final S:Ljava/lang/String;

.field private final T:Ljava/lang/String;

.field private final U:Ljava/lang/String;

.field private final V:Ljava/lang/String;

.field private final W:Ljava/lang/String;

.field private final X:Ljava/lang/String;

.field private final Y:Ljava/lang/String;

.field private final Z:Ljava/lang/String;

.field private aa:Z

.field private final mType:I


# virtual methods
.method public final C()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 686
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->hO:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public a(Ljava/util/List;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 555
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 557
    const-string v0, "raw_contact_id"

    invoke-virtual {v1, v0, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 558
    const-string v0, "mimetype"

    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 560
    const-string v0, "data2"

    iget v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 561
    iget v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    if-nez v0, :cond_0

    .line 562
    const-string v0, "data3"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->Z:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->U:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 567
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->T:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 568
    const/4 v0, 0x0

    .line 579
    :goto_0
    const-string v2, "data5"

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->S:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 580
    const-string v2, "data4"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 581
    const-string v0, "data7"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->V:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 582
    const-string v0, "data8"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->W:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 583
    const-string v0, "data9"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->X:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 584
    const-string v0, "data10"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->Y:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 586
    const-string v0, "data1"

    iget v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->P:I

    invoke-virtual {p0, v2}, Lcom/android/vcard/VCardEntry$PostalData;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 587
    iget-boolean v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->aa:Z

    if-eqz v0, :cond_1

    .line 588
    const-string v0, "is_primary"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 590
    :cond_1
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    return-void

    .line 570
    :cond_2
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->T:Ljava/lang/String;

    goto :goto_0

    .line 573
    :cond_3
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->T:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 574
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->U:Ljava/lang/String;

    goto :goto_0

    .line 576
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->U:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->T:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c(I)Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    const/16 v8, 0x20

    const/4 v7, 0x7

    const/4 v2, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 594
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 596
    new-array v4, v7, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/vcard/VCardEntry$PostalData;->S:Ljava/lang/String;

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/android/vcard/VCardEntry$PostalData;->T:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/vcard/VCardEntry$PostalData;->U:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/vcard/VCardEntry$PostalData;->V:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/android/vcard/VCardEntry$PostalData;->W:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/android/vcard/VCardEntry$PostalData;->X:Ljava/lang/String;

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/android/vcard/VCardEntry$PostalData;->Y:Ljava/lang/String;

    aput-object v5, v4, v2

    .line 599
    invoke-static {p1}, Lcom/android/vcard/VCardConfig;->r(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 601
    :goto_0
    if-ltz v2, :cond_5

    .line 602
    aget-object v5, v4, v2

    .line 603
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 604
    if-nez v0, :cond_1

    .line 605
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 609
    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 607
    goto :goto_1

    :cond_2
    move v2, v1

    .line 613
    :goto_2
    if-ge v2, v7, :cond_5

    .line 614
    aget-object v5, v4, v2

    .line 615
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 616
    if-nez v0, :cond_4

    .line 617
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 621
    :goto_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move v0, v1

    .line 619
    goto :goto_3

    .line 626
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 642
    if-ne p0, p1, :cond_1

    .line 649
    :cond_0
    :goto_0
    return v0

    .line 645
    :cond_1
    instance-of v2, p1, Lcom/android/vcard/VCardEntry$PostalData;

    if-nez v2, :cond_2

    move v0, v1

    .line 646
    goto :goto_0

    .line 648
    :cond_2
    check-cast p1, Lcom/android/vcard/VCardEntry$PostalData;

    .line 649
    iget v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    iget v3, p1, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->Z:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$PostalData;->Z:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-boolean v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->aa:Z

    iget-boolean v3, p1, Lcom/android/vcard/VCardEntry$PostalData;->aa:Z

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->S:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$PostalData;->S:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->T:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$PostalData;->T:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->U:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$PostalData;->U:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->V:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$PostalData;->V:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->W:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$PostalData;->W:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->X:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$PostalData;->X:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->Y:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$PostalData;->Y:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 664
    iget v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    .line 665
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->Z:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->Z:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 666
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->aa:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v2

    .line 668
    const/4 v2, 0x7

    new-array v4, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->S:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->T:Ljava/lang/String;

    aput-object v3, v4, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->U:Ljava/lang/String;

    aput-object v3, v4, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->V:Ljava/lang/String;

    aput-object v3, v4, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->W:Ljava/lang/String;

    aput-object v3, v4, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->X:Ljava/lang/String;

    aput-object v3, v4, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->Y:Ljava/lang/String;

    aput-object v3, v4, v2

    .line 670
    array-length v5, v4

    move v2, v1

    :goto_2
    if-ge v2, v5, :cond_3

    aget-object v3, v4, v2

    .line 671
    mul-int/lit8 v6, v0, 0x1f

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int v3, v6, v0

    .line 670
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_2

    :cond_0
    move v0, v1

    .line 665
    goto :goto_0

    .line 666
    :cond_1
    const/16 v0, 0x4d5

    goto :goto_1

    :cond_2
    move v0, v1

    .line 671
    goto :goto_3

    .line 673
    :cond_3
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->S:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->T:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->U:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->V:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->W:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->X:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PostalData;->Y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 678
    const-string v0, "type: %d, label: %s, isPrimary: %s, pobox: %s, extendedAddress: %s, street: %s, localty: %s, region: %s, postalCode %s, country: %s"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->Z:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->aa:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->S:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->T:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->U:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->V:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->W:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->X:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->Y:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
