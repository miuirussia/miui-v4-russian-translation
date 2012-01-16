.class public Lcom/android/vcard/VCardEntry$SipData;
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
.method public C()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 1418
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->hT:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public a(Ljava/util/List;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1367
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1369
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1370
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1371
    const-string v1, "data1"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$SipData;->aK:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1372
    const-string v1, "data2"

    iget v2, p0, Lcom/android/vcard/VCardEntry$SipData;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1373
    iget v1, p0, Lcom/android/vcard/VCardEntry$SipData;->mType:I

    if-nez v1, :cond_0

    .line 1374
    const-string v1, "data3"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$SipData;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1376
    :cond_0
    iget-boolean v1, p0, Lcom/android/vcard/VCardEntry$SipData;->aa:Z

    if-eqz v1, :cond_1

    .line 1377
    const-string v1, "is_primary"

    iget-boolean v2, p0, Lcom/android/vcard/VCardEntry$SipData;->aa:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1379
    :cond_1
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1380
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1389
    if-ne p0, p1, :cond_1

    .line 1396
    :cond_0
    :goto_0
    return v0

    .line 1392
    :cond_1
    instance-of v2, p1, Lcom/android/vcard/VCardEntry$SipData;

    if-nez v2, :cond_2

    move v0, v1

    .line 1393
    goto :goto_0

    .line 1395
    :cond_2
    check-cast p1, Lcom/android/vcard/VCardEntry$SipData;

    .line 1396
    iget v2, p0, Lcom/android/vcard/VCardEntry$SipData;->mType:I

    iget v3, p1, Lcom/android/vcard/VCardEntry$SipData;->mType:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$SipData;->Z:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$SipData;->Z:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$SipData;->aK:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$SipData;->aK:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/vcard/VCardEntry$SipData;->aa:Z

    iget-boolean v3, p1, Lcom/android/vcard/VCardEntry$SipData;->aa:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1404
    iget v0, p0, Lcom/android/vcard/VCardEntry$SipData;->mType:I

    .line 1405
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$SipData;->Z:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$SipData;->Z:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 1406
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$SipData;->aK:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$SipData;->aK:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 1407
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/android/vcard/VCardEntry$SipData;->aa:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v1

    .line 1408
    return v0

    :cond_1
    move v0, v1

    .line 1405
    goto :goto_0

    .line 1407
    :cond_2
    const/16 v0, 0x4d5

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$SipData;->aK:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sip: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$SipData;->aK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
