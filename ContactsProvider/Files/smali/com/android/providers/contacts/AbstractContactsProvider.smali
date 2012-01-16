.class public abstract Lcom/android/providers/contacts/AbstractContactsProvider;
.super Landroid/content/ContentProvider;
.source "AbstractContactsProvider.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteTransactionListener;


# instance fields
.field private jZ:Landroid/database/sqlite/SQLiteOpenHelper;

.field private oo:Ljava/lang/ThreadLocal;

.field private op:Landroid/database/sqlite/SQLiteOpenHelper;

.field private oq:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private h(Z)Lcom/android/providers/contacts/ContactsTransaction;
    .locals 3
    .parameter

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->oo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsTransaction;

    .line 229
    if-nez v0, :cond_1

    .line 230
    new-instance v0, Lcom/android/providers/contacts/ContactsTransaction;

    invoke-direct {v0, p1}, Lcom/android/providers/contacts/ContactsTransaction;-><init>(Z)V

    .line 231
    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->op:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->op:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->oq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/providers/contacts/ContactsTransaction;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->oo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 237
    :cond_1
    return-object v0
.end method

.method private i(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 246
    iget-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->oo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsTransaction;

    .line 247
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsTransaction;->eC()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_2

    .line 249
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsTransaction;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->dN()V

    .line 252
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ContactsTransaction;->finish(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    iget-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->oo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 258
    :cond_2
    return-void

    .line 255
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->oo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method protected abstract a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method protected abstract a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method protected abstract a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method public a(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->op:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 97
    iput-object p2, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->oq:Ljava/lang/String;

    .line 98
    return-void
.end method

.method protected abstract a(Lcom/android/providers/contacts/ContactsTransaction;)Z
.end method

.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 11
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 182
    .line 184
    invoke-direct {p0, v9}, Lcom/android/providers/contacts/AbstractContactsProvider;->h(Z)Lcom/android/providers/contacts/ContactsTransaction;

    move-result-object v5

    .line 186
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 187
    new-array v7, v6, [Landroid/content/ContentProviderResult;

    move v4, v2

    move v0, v2

    move v1, v2

    .line 188
    :goto_0
    if-ge v4, v6, :cond_2

    .line 189
    add-int/lit8 v3, v0, 0x1

    const/16 v0, 0x1f4

    if-lt v3, v0, :cond_0

    .line 190
    new-instance v0, Landroid/content/OperationApplicationException;

    const-string v2, "Too many content provider operations between yield points. The maximum number of operations per yield point is 500"

    invoke-direct {v0, v2, v1}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :catchall_0
    move-exception v0

    invoke-direct {p0, v9}, Lcom/android/providers/contacts/AbstractContactsProvider;->i(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->eA()V

    throw v0

    .line 195
    :cond_0
    :try_start_1
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProviderOperation;

    .line 196
    if-lez v4, :cond_3

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->isYieldAllowed()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-eqz v8, :cond_3

    .line 199
    :try_start_2
    invoke-virtual {p0, v5}, Lcom/android/providers/contacts/AbstractContactsProvider;->a(Lcom/android/providers/contacts/ContactsTransaction;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 200
    add-int/lit8 v1, v1, 0x1

    :cond_1
    move v3, v1

    move v1, v2

    .line 208
    :goto_1
    :try_start_3
    invoke-virtual {v0, p0, v7, v4}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v0

    aput-object v0, v7, v4

    .line 188
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v1

    move v1, v3

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsTransaction;->eE()V

    .line 204
    throw v0

    .line 210
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/android/providers/contacts/ContactsTransaction;->j(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 213
    invoke-direct {p0, v9}, Lcom/android/providers/contacts/AbstractContactsProvider;->i(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->eA()V

    return-object v7

    :cond_3
    move v10, v3

    move v3, v1

    move v1, v10

    goto :goto_1
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 154
    invoke-direct {p0, v6}, Lcom/android/providers/contacts/AbstractContactsProvider;->h(Z)Lcom/android/providers/contacts/ContactsTransaction;

    move-result-object v3

    .line 155
    array-length v4, p2

    move v2, v1

    move v0, v1

    .line 158
    :goto_0
    if-ge v2, v4, :cond_1

    .line 159
    :try_start_0
    aget-object v5, p2, v2

    invoke-virtual {p0, p1, v5}, Lcom/android/providers/contacts/AbstractContactsProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    add-int/lit8 v0, v0, 0x1

    const/16 v5, 0x32

    if-lt v0, v5, :cond_0

    .line 163
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->a(Lcom/android/providers/contacts/ContactsTransaction;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 158
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    :try_start_2
    invoke-virtual {v3}, Lcom/android/providers/contacts/ContactsTransaction;->eE()V

    .line 166
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    :catchall_0
    move-exception v0

    invoke-direct {p0, v6}, Lcom/android/providers/contacts/AbstractContactsProvider;->i(Z)V

    .line 173
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->eA()V

    throw v0

    .line 170
    :cond_1
    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {v3, v0}, Lcom/android/providers/contacts/ContactsTransaction;->j(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 172
    invoke-direct {p0, v6}, Lcom/android/providers/contacts/AbstractContactsProvider;->i(Z)V

    .line 173
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->eA()V

    .line 176
    return v4
.end method

.method protected abstract d(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;
.end method

.method protected abstract dL()Ljava/lang/ThreadLocal;
.end method

.method protected abstract dN()V
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 122
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->h(Z)Lcom/android/providers/contacts/ContactsTransaction;

    move-result-object v0

    .line 124
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/contacts/AbstractContactsProvider;->a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 125
    if-lez v1, :cond_0

    .line 126
    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsTransaction;->eD()V

    .line 128
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/ContactsTransaction;->j(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->i(Z)V

    .line 132
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->eA()V

    return v1

    .line 131
    :catchall_0
    move-exception v0

    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->i(Z)V

    .line 132
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->eA()V

    throw v0
.end method

.method protected eA()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method public ey()Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->jZ:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object v0
.end method

.method public ez()Lcom/android/providers/contacts/ContactsTransaction;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->oo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsTransaction;

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 106
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->h(Z)Lcom/android/providers/contacts/ContactsTransaction;

    move-result-object v0

    .line 108
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/AbstractContactsProvider;->a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 109
    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsTransaction;->eD()V

    .line 112
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/ContactsTransaction;->j(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->i(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->eA()V

    return-object v1

    .line 115
    :catchall_0
    move-exception v0

    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->i(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->eA()V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 81
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/AbstractContactsProvider;->d(Landroid/content/Context;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->jZ:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 82
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->dL()Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/AbstractContactsProvider;->oo:Ljava/lang/ThreadLocal;

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 138
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->h(Z)Lcom/android/providers/contacts/ContactsTransaction;

    move-result-object v0

    .line 140
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/AbstractContactsProvider;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 141
    if-lez v1, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsTransaction;->eD()V

    .line 144
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/ContactsTransaction;->j(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->i(Z)V

    .line 148
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->eA()V

    return v1

    .line 147
    :catchall_0
    move-exception v0

    invoke-direct {p0, v3}, Lcom/android/providers/contacts/AbstractContactsProvider;->i(Z)V

    .line 148
    invoke-virtual {p0}, Lcom/android/providers/contacts/AbstractContactsProvider;->eA()V

    throw v0
.end method
