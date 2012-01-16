.class public abstract Lcom/android/providers/contacts/DataRowHandler;
.super Ljava/lang/Object;
.source "DataRowHandler.java"


# instance fields
.field protected final aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field protected final dg:Lcom/android/providers/contacts/ContactAggregator;

.field protected dh:[Ljava/lang/String;

.field protected final di:Ljava/lang/String;

.field protected dj:J

.field protected final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->dh:[Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lcom/android/providers/contacts/DataRowHandler;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/android/providers/contacts/DataRowHandler;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 86
    iput-object p3, p0, Lcom/android/providers/contacts/DataRowHandler;->dg:Lcom/android/providers/contacts/ContactAggregator;

    .line 87
    iput-object p4, p0, Lcom/android/providers/contacts/DataRowHandler;->di:Ljava/lang/String;

    .line 96
    return-void
.end method

.method private a(Landroid/content/ContentValues;JJ)V
    .locals 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 188
    const-string v2, "is_primary"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    .line 189
    const-string v2, "is_super_primary"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    .line 192
    if-nez v3, :cond_0

    if-nez v4, :cond_0

    .line 247
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/DataRowHandler;->aY()J

    move-result-wide v11

    .line 197
    if-eqz v3, :cond_5

    const-string v2, "is_primary"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x1

    move v10, v2

    .line 199
    :goto_1
    if-eqz v4, :cond_6

    const-string v2, "is_super_primary"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    .line 202
    :goto_2
    if-nez v10, :cond_1

    if-eqz v2, :cond_9

    .line 204
    :cond_1
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->dh:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 205
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "is_primary"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "is_super_primary"

    aput-object v3, v4, v2

    .line 206
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "data"

    const-string v5, "_id=?"

    iget-object v6, p0, Lcom/android/providers/contacts/DataRowHandler;->dh:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 209
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 210
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    move v3, v2

    .line 211
    :goto_3
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    .line 213
    :goto_4
    if-eqz v2, :cond_2

    .line 214
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1, v11, v12}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->b(JJ)V

    .line 216
    :cond_2
    if-eqz v10, :cond_3

    if-eqz v3, :cond_3

    .line 217
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-wide/16 v5, -0x1

    move-wide/from16 v3, p4

    move-wide v7, v11

    invoke-virtual/range {v2 .. v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->b(JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 245
    :cond_4
    :goto_5
    const-string v2, "is_super_primary"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 246
    const-string v2, "is_primary"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 197
    :cond_5
    const/4 v2, 0x0

    move v10, v2

    goto :goto_1

    .line 199
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 210
    :cond_7
    const/4 v2, 0x0

    move v3, v2

    goto :goto_3

    .line 211
    :cond_8
    const/4 v2, 0x0

    goto :goto_4

    .line 221
    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    .line 225
    :cond_9
    if-eqz v3, :cond_a

    const-string v2, "is_primary"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    move v3, v2

    .line 227
    :goto_6
    if-eqz v4, :cond_b

    const-string v2, "is_super_primary"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    .line 229
    :goto_7
    if-eqz v2, :cond_c

    .line 231
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v3, p4

    move-wide v5, p2

    move-wide v7, v11

    invoke-virtual/range {v2 .. v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(JJJ)V

    .line 232
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v3, p4

    move-wide v5, p2

    move-wide v7, v11

    invoke-virtual/range {v2 .. v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->b(JJJ)V

    goto :goto_5

    .line 225
    :cond_a
    const/4 v2, 0x0

    move v3, v2

    goto :goto_6

    .line 227
    :cond_b
    const/4 v2, 0x0

    goto :goto_7

    .line 233
    :cond_c
    if-eqz v3, :cond_4

    .line 237
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1, v11, v12}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 238
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v3, p4

    move-wide v5, p2

    move-wide v7, v11

    invoke-virtual/range {v2 .. v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(JJJ)V

    .line 240
    :cond_d
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v3, p4

    move-wide v5, p2

    move-wide v7, v11

    invoke-virtual/range {v2 .. v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->b(JJJ)V

    goto :goto_5
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 13
    .parameter
    .parameter

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/android/providers/contacts/DataRowHandler;->aY()J

    move-result-wide v11

    .line 270
    const-wide/16 v9, -0x1

    .line 271
    const/4 v8, -0x1

    .line 272
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->dh:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 273
    const-string v1, "data JOIN mimetypes ON (data.mimetype_id = mimetypes._id)"

    sget-object v2, Lcom/android/providers/contacts/DataRowHandler$DataDeleteQuery;->oe:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "raw_contact_id=? AND mimetype_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/contacts/DataRowHandler;->dh:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move v0, v8

    move-wide v3, v9

    .line 279
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 280
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 281
    const/4 v1, 0x4

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 282
    const/4 v7, -0x1

    if-eq v0, v7, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/providers/contacts/DataRowHandler;->z(I)I

    move-result v7

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/DataRowHandler;->z(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-ge v7, v8, :cond_0

    :cond_1
    move v0, v1

    move-wide v3, v5

    .line 284
    goto :goto_0

    .line 288
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 290
    const-wide/16 v0, -0x1

    cmp-long v0, v3, v0

    if-eqz v0, :cond_3

    .line 291
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide v1, p2

    move-wide v5, v11

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->b(JJJ)V

    .line 293
    :cond_3
    return-void

    .line 288
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private c(Lcom/android/providers/contacts/TransactionContext;J)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 312
    invoke-virtual {p1, p2, p3}, Lcom/android/providers/contacts/TransactionContext;->A(J)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 250
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 251
    const/4 v0, 0x2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 252
    const/4 v0, 0x3

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 253
    :goto_0
    iget-object v6, p0, Lcom/android/providers/contacts/DataRowHandler;->dh:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    .line 254
    const-string v2, "data"

    const-string v3, "_id=?"

    iget-object v6, p0, Lcom/android/providers/contacts/DataRowHandler;->dh:[Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 255
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandler;->dh:[Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    .line 256
    const-string v1, "presence"

    const-string v3, "presence_raw_contact_id=?"

    iget-object v6, p0, Lcom/android/providers/contacts/DataRowHandler;->dh:[Ljava/lang/String;

    invoke-virtual {p1, v1, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 257
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 258
    invoke-direct {p0, p1, v4, v5}, Lcom/android/providers/contacts/DataRowHandler;->c(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/DataRowHandler;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    invoke-virtual {p2, v4, v5}, Lcom/android/providers/contacts/TransactionContext;->x(J)V

    .line 265
    :cond_1
    return v2

    :cond_2
    move v0, v1

    .line 252
    goto :goto_0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    const-string v0, "data"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 112
    const-string v0, "is_primary"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 113
    const-string v1, "is_super_primary"

    invoke-virtual {p5, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 114
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/contacts/DataRowHandler;->aY()J

    move-result-wide v5

    .line 116
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide v1, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->b(JJJ)V

    .line 120
    if-eqz v7, :cond_5

    .line 121
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_4

    .line 122
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide v1, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(JJJ)V

    .line 135
    :cond_2
    :goto_0
    invoke-virtual {p0, p5}, Lcom/android/providers/contacts/DataRowHandler;->a(Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    invoke-virtual {p2, p3, p4}, Lcom/android/providers/contacts/TransactionContext;->x(J)V

    .line 139
    :cond_3
    return-wide v3

    .line 124
    :cond_4
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p3, p4, v5, v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->b(JJ)V

    goto :goto_0

    .line 129
    :cond_5
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p3, p4, v5, v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide v1, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(JJJ)V

    goto :goto_0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 322
    .line 323
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 324
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->dh:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 325
    const-string v1, "data"

    const-string v3, "_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/DataRowHandler;->dh:[Ljava/lang/String;

    move-object v0, p1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 328
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    move v3, v8

    move v1, v8

    .line 329
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 330
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v5

    .line 331
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 332
    if-nez v1, :cond_0

    invoke-virtual {p4, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p4, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 334
    if-nez v0, :cond_1

    move-object v0, v2

    .line 335
    :goto_1
    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    or-int/2addr v1, v0

    .line 337
    :cond_0
    invoke-virtual {v9, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 334
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_1

    :cond_2
    move v0, v8

    .line 335
    goto :goto_2

    :cond_3
    move v8, v1

    .line 341
    :cond_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 343
    if-nez v8, :cond_5

    .line 348
    :goto_3
    return-object v2

    .line 341
    :catchall_0
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0

    .line 347
    :cond_5
    invoke-virtual {v9, p4}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    move-object v2, v9

    .line 348
    goto :goto_3
.end method

.method protected a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 305
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandler;->c(Lcom/android/providers/contacts/TransactionContext;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 307
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->dg:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/providers/contacts/ContactAggregator;->i(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 309
    :cond_0
    return-void
.end method

.method public a(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    return-void
.end method

.method public a(Landroid/content/ContentValues;)Z
    .locals 1
    .parameter

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/content/ContentValues;[Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 359
    array-length v2, p2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p2, v1

    .line 360
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 364
    :goto_1
    return v0

    .line 359
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 150
    invoke-interface {p4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 151
    invoke-interface {p4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p3

    .line 153
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/DataRowHandler;->a(Landroid/content/ContentValues;JJ)V

    .line 155
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->dh:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 157
    const-string v0, "data"

    const-string v1, "_id =?"

    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->dh:[Ljava/lang/String;

    invoke-virtual {p1, v0, p3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 160
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/providers/contacts/DataRowHandler;->a(Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {p2, v4, v5}, Lcom/android/providers/contacts/TransactionContext;->x(J)V

    .line 164
    :cond_1
    if-nez p5, :cond_2

    .line 165
    invoke-virtual {p2, v4, v5}, Lcom/android/providers/contacts/TransactionContext;->w(J)V

    .line 168
    :cond_2
    return v7
.end method

.method protected aY()J
    .locals 4

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/android/providers/contacts/DataRowHandler;->dj:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandler;->di:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/DataRowHandler;->dj:J

    .line 102
    :cond_0
    iget-wide v0, p0, Lcom/android/providers/contacts/DataRowHandler;->dj:J

    return-wide v0
.end method

.method public b(Landroid/content/ContentValues;[Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 371
    array-length v2, p2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p2, v1

    .line 372
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 373
    const/4 v0, 0x1

    .line 376
    :cond_0
    return v0

    .line 371
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public d(Lcom/android/providers/contacts/TransactionContext;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->dg:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->d(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 353
    return-void
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method protected z(I)I
    .locals 1
    .parameter

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method
