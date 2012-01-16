.class final Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;
.super Landroid/widget/Filter;
.source "BaseEmailAddressAdapter.java"


# instance fields
.field final synthetic am:Lcom/android/common/contacts/BaseEmailAddressAdapter;

.field private final jn:I

.field private final jo:J

.field private mLimit:I


# direct methods
.method public constructor <init>(Lcom/android/common/contacts/BaseEmailAddressAdapter;IJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->am:Lcom/android/common/contacts/BaseEmailAddressAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 216
    iput p2, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->jn:I

    .line 217
    iput-wide p3, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->jo:J

    .line 218
    return-void
.end method


# virtual methods
.method public declared-synchronized ak(I)V
    .locals 1
    .parameter

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->mLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    monitor-exit p0

    return-void

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLimit()I
    .locals 1

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->mLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 230
    new-instance v6, Landroid/widget/Filter$FilterResults;

    invoke-direct {v6}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 231
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "directory"

    iget-wide v4, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->jo:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    invoke-virtual {p0}, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->getLimit()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 238
    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->am:Lcom/android/common/contacts/BaseEmailAddressAdapter;

    iget-object v0, v0, Lcom/android/common/contacts/BaseEmailAddressAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/common/contacts/BaseEmailAddressAdapter$EmailQuery;->cq:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 240
    iput-object v0, v6, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 242
    :cond_0
    return-object v6
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 247
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    .line 248
    iget-object v1, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->am:Lcom/android/common/contacts/BaseEmailAddressAdapter;

    iget v2, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->jn:I

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->a(Ljava/lang/CharSequence;ILandroid/database/Cursor;)V

    .line 249
    iget-object v0, p0, Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;->am:Lcom/android/common/contacts/BaseEmailAddressAdapter;

    invoke-virtual {v0}, Lcom/android/common/contacts/BaseEmailAddressAdapter;->getCount()I

    move-result v0

    iput v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    .line 250
    return-void
.end method
