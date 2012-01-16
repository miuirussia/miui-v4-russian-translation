.class public Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;
.super Lcom/android/providers/contacts/DataRowHandler;
.source "DataRowHandlerForGroupMembership.java"


# instance fields
.field private final gH:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/util/HashMap;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    const-string v0, "vnd.android.cursor.item/group_membership"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/DataRowHandler;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;)V

    .line 75
    iput-object p4, p0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->gH:Ljava/util/HashMap;

    .line 76
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Lcom/android/providers/contacts/AccountWithDataSet;)J
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 192
    if-nez p5, :cond_1

    .line 193
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->dh:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 194
    const-string v1, "raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership$RawContactsQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/DataRowHandler;->dh:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 197
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 200
    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 202
    new-instance p5, Lcom/android/providers/contacts/AccountWithDataSet;

    invoke-direct {p5, v0, v2, v3}, Lcom/android/providers/contacts/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 211
    :cond_1
    if-nez p5, :cond_2

    .line 212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "if the groupmembership only has a sourceid the the contact must be associated with an account"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->gH:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 218
    if-nez v0, :cond_8

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 220
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->gH:Ljava/util/HashMap;

    invoke-virtual {v1, p4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 223
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 224
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_4

    .line 225
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;

    .line 226
    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->i:Ljava/lang/String;

    invoke-virtual {p5}, Lcom/android/providers/contacts/AccountWithDataSet;->eW()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->accountType:Ljava/lang/String;

    invoke-virtual {p5}, Lcom/android/providers/contacts/AccountWithDataSet;->eX()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->j:Ljava/lang/String;

    invoke-virtual {p5}, Lcom/android/providers/contacts/AccountWithDataSet;->eY()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 229
    iget-wide v0, v0, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->l:J

    .line 281
    :goto_2
    return-wide v0

    .line 224
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 233
    :cond_4
    new-instance v8, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;

    invoke-direct {v8}, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;-><init>()V

    .line 234
    invoke-virtual {p5}, Lcom/android/providers/contacts/AccountWithDataSet;->eW()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->i:Ljava/lang/String;

    .line 235
    invoke-virtual {p5}, Lcom/android/providers/contacts/AccountWithDataSet;->eX()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->accountType:Ljava/lang/String;

    .line 236
    invoke-virtual {p5}, Lcom/android/providers/contacts/AccountWithDataSet;->eY()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->j:Ljava/lang/String;

    .line 237
    iput-object p4, v8, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->k:Ljava/lang/String;

    .line 238
    const/4 v0, 0x0

    invoke-virtual {v1, v0, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 243
    invoke-virtual {p5}, Lcom/android/providers/contacts/AccountWithDataSet;->eY()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 244
    const-string v1, "groups"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "sourceid=? AND account_name=? AND account_type=? AND data_set IS NULL"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p4, v4, v0

    const/4 v0, 0x1

    invoke-virtual {p5}, Lcom/android/providers/contacts/AccountWithDataSet;->eW()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x2

    invoke-virtual {p5}, Lcom/android/providers/contacts/AccountWithDataSet;->eX()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    .line 262
    :goto_3
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 263
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v8, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->l:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 278
    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 281
    iget-wide v0, v8, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->l:J

    goto :goto_2

    .line 252
    :cond_5
    const-string v1, "groups"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "sourceid=? AND account_name=? AND account_type=? AND data_set=?"

    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p4, v4, v0

    const/4 v0, 0x1

    invoke-virtual {p5}, Lcom/android/providers/contacts/AccountWithDataSet;->eW()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x2

    invoke-virtual {p5}, Lcom/android/providers/contacts/AccountWithDataSet;->eX()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x3

    invoke-virtual {p5}, Lcom/android/providers/contacts/AccountWithDataSet;->eY()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    goto :goto_3

    .line 265
    :cond_6
    :try_start_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 266
    const-string v2, "account_name"

    invoke-virtual {p5}, Lcom/android/providers/contacts/AccountWithDataSet;->eW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v2, "account_type"

    invoke-virtual {p5}, Lcom/android/providers/contacts/AccountWithDataSet;->eX()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v2, "data_set"

    invoke-virtual {p5}, Lcom/android/providers/contacts/AccountWithDataSet;->eY()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v2, "sourceid"

    invoke-virtual {v0, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v2, "groups"

    const-string v3, "account_name"

    invoke-virtual {p1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 271
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_7

    .line 272
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to create a new group with this sourceid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 278
    :catchall_1
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 275
    :cond_7
    :try_start_3
    iput-wide v2, v8, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->l:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_4

    :cond_8
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;JZ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 109
    const-string v4, "starred"

    if-eqz p4, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    const-string v0, "raw_contacts"

    const-string v4, "_id=?"

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {p1, v0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->dg:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->u(J)V

    .line 114
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 109
    goto :goto_0
.end method

.method private a(Lcom/android/providers/contacts/TransactionContext;JLandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    const-string v0, "group_sourceid"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 153
    const-string v1, "data1"

    invoke-virtual {p5, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    .line 154
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "you are not allowed to set both the GroupMembership.GROUP_SOURCE_ID and GroupMembership.GROUP_ROW_ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 161
    if-eqz p6, :cond_2

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "you must set exactly one of GroupMembership.GROUP_SOURCE_ID and GroupMembership.GROUP_ROW_ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_1
    if-eqz v0, :cond_2

    .line 171
    const-string v0, "group_sourceid"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-virtual {p1, p2, p3}, Lcom/android/providers/contacts/TransactionContext;->z(J)Lcom/android/providers/contacts/AccountWithDataSet;

    move-result-object v5

    move-object v0, p0

    move-object v1, p4

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->a(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Lcom/android/providers/contacts/AccountWithDataSet;)J

    move-result-wide v0

    .line 174
    const-string v2, "group_sourceid"

    invoke-virtual {p5, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 175
    const-string v2, "data1"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 177
    :cond_2
    return-void
.end method

.method private d(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 118
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v2

    .line 120
    const-wide/16 v4, 0x0

    const-string v6, "SELECT COUNT(*) FROM data LEFT OUTER JOIN groups ON data.data1=groups._id WHERE mimetype_id=? AND data.raw_contact_id=? AND favorites!=0"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v0

    invoke-static {p1, v6, v7}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-gez v2, :cond_0

    .line 123
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 120
    goto :goto_0
.end method

.method private e(Lcom/android/providers/contacts/TransactionContext;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->g(J)J

    move-result-wide v0

    .line 141
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->b(Lcom/android/providers/contacts/TransactionContext;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->dg:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->s(J)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    const/4 v0, 0x2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 129
    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->d(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v2

    .line 130
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandler;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v3

    .line 131
    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->d(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v4

    .line 132
    if-eqz v2, :cond_0

    if-nez v4, :cond_0

    .line 133
    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->a(Landroid/database/sqlite/SQLiteDatabase;JZ)V

    .line 135
    :cond_0
    invoke-direct {p0, p2, v0, v1}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->e(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 136
    return v3
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 81
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->a(Lcom/android/providers/contacts/TransactionContext;JLandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Z)V

    .line 82
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v0

    .line 83
    invoke-direct {p0, p1, p3, p4}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->d(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    invoke-direct {p0, p1, p3, p4, v6}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->a(Landroid/database/sqlite/SQLiteDatabase;JZ)V

    .line 86
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->e(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 87
    return-wide v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 93
    invoke-interface {p4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 94
    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->d(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v8

    move-object v0, p0

    move-object v1, p2

    move-object v4, p1

    move-object v5, p3

    .line 95
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->a(Lcom/android/providers/contacts/TransactionContext;JLandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Z)V

    .line 96
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    :goto_0
    return v6

    .line 99
    :cond_0
    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->d(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v0

    .line 100
    if-eq v8, v0, :cond_1

    .line 101
    invoke-direct {p0, p1, v2, v3, v0}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->a(Landroid/database/sqlite/SQLiteDatabase;JZ)V

    .line 103
    :cond_1
    invoke-direct {p0, p2, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->e(Lcom/android/providers/contacts/TransactionContext;J)V

    move v6, v7

    .line 104
    goto :goto_0
.end method
