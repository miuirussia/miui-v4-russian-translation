.class public Lcom/android/vcard/VCardEntry$PhoneData;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/vcard/VCardEntry$EntryElement;


# instance fields
.field private final Z:Ljava/lang/String;

.field private aa:Z

.field private final mType:I

.field private final rT:Ljava/lang/String;


# virtual methods
.method public final C()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 375
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->hM:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public a(Ljava/util/List;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 322
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 324
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 325
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 327
    const-string v1, "data2"

    iget v2, p0, Lcom/android/vcard/VCardEntry$PhoneData;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 328
    iget v1, p0, Lcom/android/vcard/VCardEntry$PhoneData;->mType:I

    if-nez v1, :cond_0

    .line 329
    const-string v1, "data3"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PhoneData;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 331
    :cond_0
    const-string v1, "data1"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PhoneData;->rT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 332
    iget-boolean v1, p0, Lcom/android/vcard/VCardEntry$PhoneData;->aa:Z

    if-eqz v1, :cond_1

    .line 333
    const-string v1, "is_primary"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 335
    :cond_1
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 345
    if-ne p0, p1, :cond_1

    .line 352
    :cond_0
    :goto_0
    return v0

    .line 348
    :cond_1
    instance-of v2, p1, Lcom/android/vcard/VCardEntry$PhoneData;

    if-nez v2, :cond_2

    move v0, v1

    .line 349
    goto :goto_0

    .line 351
    :cond_2
    check-cast p1, Lcom/android/vcard/VCardEntry$PhoneData;

    .line 352
    iget v2, p0, Lcom/android/vcard/VCardEntry$PhoneData;->mType:I

    iget v3, p1, Lcom/android/vcard/VCardEntry$PhoneData;->mType:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PhoneData;->rT:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$PhoneData;->rT:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PhoneData;->Z:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$PhoneData;->Z:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/vcard/VCardEntry$PhoneData;->aa:Z

    iget-boolean v3, p1, Lcom/android/vcard/VCardEntry$PhoneData;->aa:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 360
    iget v0, p0, Lcom/android/vcard/VCardEntry$PhoneData;->mType:I

    .line 361
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PhoneData;->rT:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PhoneData;->rT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 362
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PhoneData;->Z:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$PhoneData;->Z:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 363
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/android/vcard/VCardEntry$PhoneData;->aa:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v1

    .line 364
    return v0

    :cond_1
    move v0, v1

    .line 361
    goto :goto_0

    .line 363
    :cond_2
    const/16 v0, 0x4d5

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PhoneData;->rT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 369
    const-string v0, "type: %d, data: %s, label: %s, isPrimary: %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/vcard/VCardEntry$PhoneData;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PhoneData;->rT:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PhoneData;->Z:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/android/vcard/VCardEntry$PhoneData;->aa:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
