.class public Lcom/android/providers/contacts/SearchIndexManager;
.super Ljava/lang/Object;
.source "SearchIndexManager.java"


# instance fields
.field private final aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private final db:Lcom/android/providers/contacts/ContactsProvider2;

.field private dh:[Ljava/lang/String;

.field private is:Landroid/content/ContentValues;

.field private kH:Ljava/lang/StringBuilder;

.field private qL:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 1
    .parameter

    .prologue
    .line 215
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->kH:Ljava/lang/StringBuilder;

    .line 211
    new-instance v0, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    invoke-direct {v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->qL:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    .line 212
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->is:Landroid/content/ContentValues;

    .line 213
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->dh:[Ljava/lang/String;

    .line 216
    iput-object p1, p0, Lcom/android/providers/contacts/SearchIndexManager;->db:Lcom/android/providers/contacts/ContactsProvider2;

    .line 217
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->db:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->ey()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iput-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 218
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v9, -0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 282
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->kH:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 283
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->kH:Ljava/lang/StringBuilder;

    const-string v1, "contact_id, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->kH:Ljava/lang/StringBuilder;

    const-string v1, "(CASE WHEN mimetype_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->kH:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "vnd.android.cursor.item/nickname"

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 286
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->kH:Ljava/lang/StringBuilder;

    const-string v1, " THEN -4 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->kH:Ljava/lang/StringBuilder;

    const-string v1, " WHEN mimetype_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->kH:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "vnd.android.cursor.item/organization"

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 289
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->kH:Ljava/lang/StringBuilder;

    const-string v1, " THEN -3 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->kH:Ljava/lang/StringBuilder;

    const-string v1, " WHEN mimetype_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->kH:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 292
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->kH:Ljava/lang/StringBuilder;

    const-string v1, " THEN -2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->kH:Ljava/lang/StringBuilder;

    const-string v1, " WHEN mimetype_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->kH:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->i(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 295
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->kH:Ljava/lang/StringBuilder;

    const-string v1, " THEN -1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->kH:Ljava/lang/StringBuilder;

    const-string v1, " ELSE mimetype_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->kH:Ljava/lang/StringBuilder;

    const-string v1, " END), is_super_primary, data._id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string v1, "data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/SearchIndexManager$ContactIndexQuery;->COLUMNS:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->kH:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 302
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->qL:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    invoke-virtual {v0, v11}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->setCursor(Landroid/database/Cursor;)V

    .line 303
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->qL:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    invoke-virtual {v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->reset()V

    move-wide v2, v9

    move v6, v8

    .line 306
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 307
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 308
    cmp-long v0, v7, v2

    if-eqz v0, :cond_2

    .line 309
    cmp-long v0, v2, v9

    if-eqz v0, :cond_1

    .line 310
    iget-object v4, p0, Lcom/android/providers/contacts/SearchIndexManager;->qL:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/SearchIndexManager;->a(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Z)V

    .line 311
    add-int/lit8 v6, v6, 0x1

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->qL:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    invoke-virtual {v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->reset()V

    move-wide v2, v7

    .line 316
    :cond_2
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->db:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->aa(Ljava/lang/String;)Lcom/android/providers/contacts/DataRowHandler;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Lcom/android/providers/contacts/DataRowHandler;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->qL:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/DataRowHandler;->a(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;)V

    .line 320
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->qL:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    invoke-virtual {v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 328
    :catchall_0
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0

    .line 323
    :cond_3
    cmp-long v0, v2, v9

    if-eqz v0, :cond_4

    .line 324
    :try_start_1
    iget-object v4, p0, Lcom/android/providers/contacts/SearchIndexManager;->qL:Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/SearchIndexManager;->a(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    add-int/lit8 v0, v6, 0x1

    .line 328
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 330
    return v0

    :cond_4
    move v0, v6

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 372
    .line 373
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    move v2, v3

    .line 374
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v0, v4, :cond_6

    .line 376
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v0, v4, :cond_1

    move v4, v1

    .line 386
    :goto_1
    if-eqz v4, :cond_5

    .line 387
    if-ne v2, v3, :cond_0

    move v2, v0

    .line 374
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 380
    const/16 v7, 0x80

    if-lt v4, v7, :cond_2

    move v4, v5

    .line 381
    goto :goto_1

    .line 383
    :cond_2
    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v7

    if-nez v7, :cond_3

    const/16 v7, 0x5f

    if-ne v4, v7, :cond_4

    :cond_3
    move v4, v5

    goto :goto_1

    :cond_4
    move v4, v1

    goto :goto_1

    .line 391
    :cond_5
    if-eq v2, v3, :cond_0

    .line 392
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 393
    invoke-virtual {p1, v6, v2}, Lcom/android/providers/contacts/SearchIndexManager$FtsQueryBuilder;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    move v2, v3

    .line 394
    goto :goto_2

    .line 398
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 335
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->is:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 336
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->is:Landroid/content/ContentValues;

    const-string v1, "content"

    invoke-virtual {p4}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->gk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->is:Landroid/content/ContentValues;

    const-string v1, "name"

    invoke-virtual {p4}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->is:Landroid/content/ContentValues;

    const-string v1, "tokens"

    invoke-virtual {p4}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->gl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    if-eqz p5, :cond_1

    .line 340
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->dh:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 341
    const-string v0, "search_index"

    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->is:Landroid/content/ContentValues;

    const-string v2, "contact_id=CAST(? AS int)"

    iget-object v3, p0, Lcom/android/providers/contacts/SearchIndexManager;->dh:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 343
    if-nez v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->is:Landroid/content/ContentValues;

    const-string v1, "contact_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 345
    const-string v0, "search_index"

    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->is:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->is:Landroid/content/ContentValues;

    const-string v1, "contact_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 349
    const-string v0, "search_index"

    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->is:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method private av(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 238
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->db:Lcom/android/providers/contacts/ContactsProvider2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->aG(I)V

    .line 239
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 243
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, v0, v3}, Lcom/android/providers/contacts/SearchIndexManager;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 245
    iget-object v3, p0, Lcom/android/providers/contacts/SearchIndexManager;->db:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v3, v8}, Lcom/android/providers/contacts/ContactsProvider2;->aG(I)V

    .line 247
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    .line 248
    const-string v5, "ContactsFTS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rebuild contact search index in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v1, v3, v1

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " contacts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void

    .line 245
    :catchall_0
    move-exception v0

    iget-object v3, p0, Lcom/android/providers/contacts/SearchIndexManager;->db:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v3, v8}, Lcom/android/providers/contacts/ContactsProvider2;->aG(I)V

    .line 247
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    .line 248
    const-string v5, "ContactsFTS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rebuild contact search index in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v1, v3, v1

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contacts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    throw v0
.end method

.method private ax(I)V
    .locals 3
    .parameter

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "search_index"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method private fg()I
    .locals 3

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "search_index"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public b(Ljava/util/Set;Ljava/util/Set;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x29

    .line 254
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->kH:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 255
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->kH:Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->kH:Ljava/lang/StringBuilder;

    const-string v1, "contact_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 259
    iget-object v2, p0, Lcom/android/providers/contacts/SearchIndexManager;->kH:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->kH:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->kH:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 262
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->kH:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 265
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 266
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->kH:Ljava/lang/StringBuilder;

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->kH:Ljava/lang/StringBuilder;

    const-string v1, "raw_contact_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 271
    iget-object v2, p0, Lcom/android/providers/contacts/SearchIndexManager;->kH:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->kH:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->kH:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 274
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->kH:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    :cond_4
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->kH:Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/SearchIndexManager;->kH:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/contacts/SearchIndexManager;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    .line 279
    return-void
.end method

.method public ff()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 221
    invoke-direct {p0}, Lcom/android/providers/contacts/SearchIndexManager;->fg()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 235
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/SearchIndexManager;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 225
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 227
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/contacts/SearchIndexManager;->fg()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 228
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/SearchIndexManager;->av(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 229
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/SearchIndexManager;->ax(I)V

    .line 230
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method
