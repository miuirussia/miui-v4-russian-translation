.class public Lcom/android/vcard/VCardEntry$PhotoData;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/vcard/VCardEntry$EntryElement;


# instance fields
.field private final aa:Z

.field private dY:Ljava/lang/Integer;

.field private final mBytes:[B

.field private final mFormat:Ljava/lang/String;


# virtual methods
.method public final C()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 1050
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->hR:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public a(Ljava/util/List;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 993
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 995
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 996
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 997
    const-string v1, "data15"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 998
    iget-boolean v1, p0, Lcom/android/vcard/VCardEntry$PhotoData;->aa:Z

    if-eqz v1, :cond_0

    .line 999
    const-string v1, "is_primary"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1001
    :cond_0
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1002
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1011
    if-ne p0, p1, :cond_1

    .line 1018
    :cond_0
    :goto_0
    return v0

    .line 1014
    :cond_1
    instance-of v2, p1, Lcom/android/vcard/VCardEntry$PhotoData;

    if-nez v2, :cond_2

    move v0, v1

    .line 1015
    goto :goto_0

    .line 1017
    :cond_2
    check-cast p1, Lcom/android/vcard/VCardEntry$PhotoData;

    .line 1018
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mFormat:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$PhotoData;->mFormat:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/vcard/VCardEntry$PhotoData;->aa:Z

    iget-boolean v3, p1, Lcom/android/vcard/VCardEntry$PhotoData;->aa:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1025
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PhotoData;->dY:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PhotoData;->dY:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1039
    :goto_0
    return v0

    .line 1029
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mFormat:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mFormat:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 1030
    :goto_1
    mul-int/lit8 v0, v0, 0x1f

    .line 1031
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    if-eqz v2, :cond_2

    .line 1032
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    array-length v3, v2

    :goto_2
    if-ge v1, v3, :cond_2

    aget-byte v4, v2, v1

    .line 1033
    add-int/2addr v0, v4

    .line 1032
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    move v0, v1

    .line 1029
    goto :goto_1

    .line 1037
    :cond_2
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/android/vcard/VCardEntry$PhotoData;->aa:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x4cf

    :goto_3
    add-int/2addr v0, v1

    .line 1038
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vcard/VCardEntry$PhotoData;->dY:Ljava/lang/Integer;

    goto :goto_0

    .line 1037
    :cond_3
    const/16 v0, 0x4d5

    goto :goto_3
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1044
    const-string v0, "format: %s: size: %d, isPrimary: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mFormat:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PhotoData;->mBytes:[B

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/android/vcard/VCardEntry$PhotoData;->aa:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
