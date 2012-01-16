.class public Lcom/android/vcard/VCardEntry$ImData;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/vcard/VCardEntry$EntryElement;


# instance fields
.field private final aK:Ljava/lang/String;

.field private final aa:Z

.field private final gh:I

.field private final gi:Ljava/lang/String;

.field private final mType:I


# virtual methods
.method public final C()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 945
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->hQ:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public a(Ljava/util/List;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 889
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 891
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 892
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/im"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 893
    const-string v1, "data2"

    iget v2, p0, Lcom/android/vcard/VCardEntry$ImData;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 894
    const-string v1, "data5"

    iget v2, p0, Lcom/android/vcard/VCardEntry$ImData;->gh:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 895
    const-string v1, "data1"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$ImData;->aK:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 896
    iget v1, p0, Lcom/android/vcard/VCardEntry$ImData;->gh:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 897
    const-string v1, "data6"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$ImData;->gi:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 899
    :cond_0
    iget-boolean v1, p0, Lcom/android/vcard/VCardEntry$ImData;->aa:Z

    if-eqz v1, :cond_1

    .line 900
    const-string v1, "is_primary"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 902
    :cond_1
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 903
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 912
    if-ne p0, p1, :cond_1

    .line 919
    :cond_0
    :goto_0
    return v0

    .line 915
    :cond_1
    instance-of v2, p1, Lcom/android/vcard/VCardEntry$ImData;

    if-nez v2, :cond_2

    move v0, v1

    .line 916
    goto :goto_0

    .line 918
    :cond_2
    check-cast p1, Lcom/android/vcard/VCardEntry$ImData;

    .line 919
    iget v2, p0, Lcom/android/vcard/VCardEntry$ImData;->mType:I

    iget v3, p1, Lcom/android/vcard/VCardEntry$ImData;->mType:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/vcard/VCardEntry$ImData;->gh:I

    iget v3, p1, Lcom/android/vcard/VCardEntry$ImData;->gh:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$ImData;->gi:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$ImData;->gi:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$ImData;->aK:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/vcard/VCardEntry$ImData;->aK:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/vcard/VCardEntry$ImData;->aa:Z

    iget-boolean v3, p1, Lcom/android/vcard/VCardEntry$ImData;->aa:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 928
    iget v0, p0, Lcom/android/vcard/VCardEntry$ImData;->mType:I

    .line 929
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/android/vcard/VCardEntry$ImData;->gh:I

    add-int/2addr v0, v2

    .line 930
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$ImData;->gi:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$ImData;->gi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    .line 931
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$ImData;->aK:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$ImData;->aK:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 932
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/android/vcard/VCardEntry$ImData;->aa:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v1

    .line 933
    return v0

    :cond_1
    move v0, v1

    .line 930
    goto :goto_0

    .line 932
    :cond_2
    const/16 v0, 0x4d5

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$ImData;->aK:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 938
    const-string v0, "type: %d, protocol: %d, custom_protcol: %s, data: %s, isPrimary: %s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/vcard/VCardEntry$ImData;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/vcard/VCardEntry$ImData;->gh:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$ImData;->gi:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$ImData;->aK:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/android/vcard/VCardEntry$ImData;->aa:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
