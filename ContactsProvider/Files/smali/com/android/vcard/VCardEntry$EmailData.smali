.class public Lcom/android/vcard/VCardEntry$EmailData;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/vcard/VCardEntry$EntryElement;


# instance fields
.field private final Z:Ljava/lang/String;

.field private final aK:Ljava/lang/String;

.field private final aa:Z

.field private final mType:I


# virtual methods
.method public final C()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 465
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->hN:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public a(Ljava/util/List;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 412
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 414
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 415
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 417
    const-string v1, "data2"

    iget v2, p0, Lcom/android/vcard/VCardEntry$EmailData;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 418
    iget v1, p0, Lcom/android/vcard/VCardEntry$EmailData;->mType:I

    if-nez v1, :cond_0

    .line 419
    const-string v1, "data3"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$EmailData;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 421
    :cond_0
    const-string v1, "data1"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$EmailData;->aK:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 422
    iget-boolean v1, p0, Lcom/android/vcard/VCardEntry$EmailData;->aa:Z

    if-eqz v1, :cond_1

    .line 423
    const-string v1, "is_primary"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 425
    :cond_1
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 435
    if-ne p0, p1, :cond_1

    .line 442
    :cond_0
    :goto_0
    return v0

    .line 438
    :cond_1
    instance-of v2, p1, Lcom/android/vcard/VCardEntry$EmailData;

    if-nez v2, :cond_2

    move v0, v1

    .line 439
    goto :goto_0

    .line 441
    :cond_2
    check-cast p1, Lcom/android/vcard/VCardEntry$EmailData;

    .line 442
    iget v2, p0, Lcom/android/vcard/VCardEntry$EmailData;->mType:I

    iget v3, p1, Lcom/android/vcard/VCardEntry$EmailData;->mType:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$EmailData;->aK:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$EmailData;->aK:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$EmailData;->Z:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$EmailData;->Z:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/vcard/VCardEntry$EmailData;->aa:Z

    iget-boolean v3, p1, Lcom/android/vcard/VCardEntry$EmailData;->aa:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 450
    iget v0, p0, Lcom/android/vcard/VCardEntry$EmailData;->mType:I

    .line 451
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$EmailData;->aK:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$EmailData;->aK:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 452
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$EmailData;->Z:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$EmailData;->Z:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 453
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/android/vcard/VCardEntry$EmailData;->aa:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v1

    .line 454
    return v0

    :cond_1
    move v0, v1

    .line 451
    goto :goto_0

    .line 453
    :cond_2
    const/16 v0, 0x4d5

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$EmailData;->aK:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 459
    const-string v0, "type: %d, data: %s, label: %s, isPrimary: %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/vcard/VCardEntry$EmailData;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$EmailData;->aK:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$EmailData;->Z:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/android/vcard/VCardEntry$EmailData;->aa:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
