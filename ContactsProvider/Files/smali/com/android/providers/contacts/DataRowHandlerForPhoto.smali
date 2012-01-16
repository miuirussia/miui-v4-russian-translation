.class public Lcom/android/providers/contacts/DataRowHandlerForPhoto;
.super Lcom/android/providers/contacts/DataRowHandler;
.source "DataRowHandlerForPhoto.java"


# instance fields
.field private final kV:Lcom/android/providers/contacts/PhotoStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Lcom/android/providers/contacts/PhotoStore;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    const-string v0, "vnd.android.cursor.item/photo"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/DataRowHandler;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;)V

    .line 50
    iput-object p4, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->kV:Lcom/android/providers/contacts/PhotoStore;

    .line 51
    return-void
.end method

.method private i(Landroid/content/ContentValues;)Z
    .locals 1
    .parameter

    .prologue
    .line 104
    const-string v0, "data15"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->j(Landroid/content/ContentValues;)Z

    move-result v0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->k(Landroid/content/ContentValues;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    const/4 v0, 0x0

    .line 118
    :goto_0
    return v0

    .line 114
    :cond_0
    const-string v0, "data15"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 115
    const-string v0, "data14"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 118
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private j(Landroid/content/ContentValues;)Z
    .locals 1
    .parameter

    .prologue
    .line 122
    const-string v0, "data15"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 123
    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k(Landroid/content/ContentValues;)Z
    .locals 6
    .parameter

    .prologue
    .line 142
    const-string v0, "data15"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 143
    if-eqz v0, :cond_1

    .line 144
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f03

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 146
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 149
    :try_start_0
    new-instance v3, Lcom/android/providers/contacts/PhotoProcessor;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/providers/contacts/PhotoProcessor;-><init>([BII)V

    .line 151
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->kV:Lcom/android/providers/contacts/PhotoStore;

    invoke-virtual {v0, v3}, Lcom/android/providers/contacts/PhotoStore;->a(Lcom/android/providers/contacts/PhotoProcessor;)J

    move-result-wide v0

    .line 152
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 153
    const-string v2, "data14"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 157
    :goto_0
    const-string v0, "data15"

    invoke-virtual {v3}, Lcom/android/providers/contacts/PhotoProcessor;->fA()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 158
    const/4 v0, 0x1

    .line 163
    :goto_1
    return v0

    .line 155
    :cond_0
    const-string v0, "data14"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    const-string v1, "DataRowHandlerForPhoto"

    const-string v2, "Could not process photo for insert or update"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    const/4 v0, 0x2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 129
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandler;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v2

    .line 130
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandler;->dg:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v3, p1, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->g(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 131
    return v2
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    const-string v0, "skip_processing"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    const-string v0, "skip_processing"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 66
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v0

    .line 67
    invoke-virtual {p2, p3, p4}, Lcom/android/providers/contacts/TransactionContext;->A(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 68
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->dg:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v2, p1, p3, p4}, Lcom/android/providers/contacts/ContactAggregator;->g(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 70
    :cond_1
    :goto_0
    return-wide v0

    .line 61
    :cond_2
    invoke-direct {p0, p5}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->i(Landroid/content/ContentValues;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 76
    invoke-interface {p4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 78
    const-string v4, "skip_processing"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 79
    const-string v4, "skip_processing"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 88
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 93
    :goto_0
    return v0

    .line 82
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->i(Landroid/content/ContentValues;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->dg:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/providers/contacts/ContactAggregator;->g(Landroid/database/sqlite/SQLiteDatabase;J)V

    move v0, v1

    .line 93
    goto :goto_0
.end method
