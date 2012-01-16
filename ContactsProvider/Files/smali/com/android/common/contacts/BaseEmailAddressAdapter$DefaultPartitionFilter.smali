.class final Lcom/android/common/contacts/BaseEmailAddressAdapter$DefaultPartitionFilter;
.super Landroid/widget/Filter;
.source "BaseEmailAddressAdapter.java"


# instance fields
.field final synthetic am:Lcom/android/common/contacts/BaseEmailAddressAdapter;


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DefaultPartitionFilter;->am:Lcom/android/common/contacts/BaseEmailAddressAdapter;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->a(Lcom/android/common/contacts/BaseEmailAddressAdapter;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 166
    .line 167
    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DefaultPartitionFilter;->am:Lcom/android/common/contacts/BaseEmailAddressAdapter;

    invoke-static {v0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->a(Lcom/android/common/contacts/BaseEmailAddressAdapter;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DefaultPartitionFilter;->am:Lcom/android/common/contacts/BaseEmailAddressAdapter;

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryListQuery;->URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryListQuery;->cq:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DefaultPartitionFilter;->am:Lcom/android/common/contacts/BaseEmailAddressAdapter;

    invoke-static {v1, v8}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->a(Lcom/android/common/contacts/BaseEmailAddressAdapter;Z)Z

    move-object v6, v0

    .line 173
    :goto_0
    new-instance v7, Landroid/widget/Filter$FilterResults;

    invoke-direct {v7}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    iget-object v2, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DefaultPartitionFilter;->am:Lcom/android/common/contacts/BaseEmailAddressAdapter;

    invoke-static {v2}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->b(Lcom/android/common/contacts/BaseEmailAddressAdapter;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DefaultPartitionFilter;->am:Lcom/android/common/contacts/BaseEmailAddressAdapter;

    invoke-static {v1}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->c(Lcom/android/common/contacts/BaseEmailAddressAdapter;)Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 181
    const-string v1, "name_for_primary_account"

    iget-object v2, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DefaultPartitionFilter;->am:Lcom/android/common/contacts/BaseEmailAddressAdapter;

    invoke-static {v2}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->c(Lcom/android/common/contacts/BaseEmailAddressAdapter;)Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 182
    const-string v1, "type_for_primary_account"

    iget-object v2, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DefaultPartitionFilter;->am:Lcom/android/common/contacts/BaseEmailAddressAdapter;

    invoke-static {v2}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->c(Lcom/android/common/contacts/BaseEmailAddressAdapter;)Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 184
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 185
    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DefaultPartitionFilter;->am:Lcom/android/common/contacts/BaseEmailAddressAdapter;

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/common/contacts/BaseEmailAddressAdapter$EmailQuery;->cq:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 186
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, v7, Landroid/widget/Filter$FilterResults;->count:I

    .line 188
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/database/Cursor;

    const/4 v1, 0x0

    aput-object v6, v0, v1

    aput-object v3, v0, v8

    iput-object v0, v7, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 189
    return-object v7

    :cond_2
    move-object v6, v3

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 194
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, [Landroid/database/Cursor;

    check-cast v0, [Landroid/database/Cursor;

    .line 196
    iget-object v1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DefaultPartitionFilter;->am:Lcom/android/common/contacts/BaseEmailAddressAdapter;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->a(Ljava/lang/CharSequence;Landroid/database/Cursor;Landroid/database/Cursor;)V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DefaultPartitionFilter;->am:Lcom/android/common/contacts/BaseEmailAddressAdapter;

    invoke-virtual {v0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->getCount()I

    move-result v0

    iput v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    .line 199
    return-void
.end method
