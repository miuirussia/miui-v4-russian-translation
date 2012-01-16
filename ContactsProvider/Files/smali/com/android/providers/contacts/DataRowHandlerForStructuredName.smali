.class public Lcom/android/providers/contacts/DataRowHandlerForStructuredName;
.super Lcom/android/providers/contacts/DataRowHandler;
.source "DataRowHandlerForStructuredName.java"


# instance fields
.field private final ir:Lcom/android/providers/contacts/NameLookupBuilder;

.field private final kH:Ljava/lang/StringBuilder;

.field private final n:[Ljava/lang/String;

.field private final qw:Lcom/android/providers/contacts/NameSplitter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/NameLookupBuilder;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    const-string v0, "vnd.android.cursor.item/name"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/DataRowHandler;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;)V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->kH:Ljava/lang/StringBuilder;

    .line 112
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data6"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->n:[Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->qw:Lcom/android/providers/contacts/NameSplitter;

    .line 41
    iput-object p5, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->ir:Lcom/android/providers/contacts/NameLookupBuilder;

    .line 42
    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 99
    const/4 v2, 0x2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 101
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandler;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v4

    .line 103
    iget-object v5, p0, Lcom/android/providers/contacts/DataRowHandler;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->b(J)V

    .line 104
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 105
    invoke-virtual {p0, p2, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->d(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 106
    return v4
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0, p5, p5}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->b(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 49
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v3

    .line 51
    const-string v0, "data1"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 52
    const-string v0, "data10"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 53
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->ir:Lcom/android/providers/contacts/NameLookupBuilder;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->qw:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/providers/contacts/NameSplitter;->ap(I)I

    move-result v6

    :goto_0
    move-wide v1, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/NameLookupBuilder;->a(JJLjava/lang/String;I)V

    move-object v0, p0

    move-wide v1, p3

    move-object v5, p5

    .line 57
    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->a(JJLandroid/content/ContentValues;)V

    .line 58
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 59
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->d(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 60
    return-wide v3

    .line 53
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public a(JJLandroid/content/ContentValues;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    const-string v0, "data9"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data7"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data8"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v1, "data9"

    invoke-virtual {p5, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "data8"

    invoke-virtual {p5, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "data7"

    invoke-virtual {p5, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_1
    return-void
.end method

.method public a(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 194
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 195
    const-string v0, "data10"

    invoke-virtual {p1, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 197
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->ir:Lcom/android/providers/contacts/NameLookupBuilder;

    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->qw:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/android/providers/contacts/NameSplitter;->ap(I)I

    move-result v0

    :goto_0
    invoke-virtual {v3, p1, v2, v0}, Lcom/android/providers/contacts/NameLookupBuilder;->a(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;Ljava/lang/String;I)V

    .line 201
    const-string v0, "data9"

    invoke-virtual {p1, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    const-string v2, "data8"

    invoke-virtual {p1, v2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 203
    const-string v3, "data7"

    invoke-virtual {p1, v3}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 206
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 208
    :cond_0
    iget-object v4, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->kH:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 209
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 210
    invoke-virtual {p1, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->ao(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->kH:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 214
    invoke-virtual {p1, v2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->ao(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->kH:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 218
    invoke-virtual {p1, v3}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->ao(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->kH:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->kH:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->ao(Ljava/lang/String;)V

    .line 223
    :cond_4
    return-void

    :cond_5
    move v0, v1

    .line 197
    goto :goto_0
.end method

.method public a(Landroid/content/ContentValues;)Z
    .locals 1
    .parameter

    .prologue
    .line 182
    const-string v0, "data3"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data2"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data5"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data9"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data7"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data8"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data4"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data6"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 66
    invoke-interface {p4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 67
    invoke-interface {p4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 69
    invoke-virtual {p0, p1, v3, v4, p3}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->a(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v8

    .line 70
    if-nez v8, :cond_0

    .line 93
    :goto_0
    return v6

    .line 74
    :cond_0
    invoke-virtual {p0, v8, p3}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->b(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 76
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    .line 77
    const-string v0, "data1"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "data9"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "data8"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "data7"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    :cond_1
    invoke-virtual {v8, p3}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 82
    const-string v0, "data1"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 83
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, v3, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->b(J)V

    .line 84
    const-string v0, "data10"

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 85
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->ir:Lcom/android/providers/contacts/NameLookupBuilder;

    if-eqz v9, :cond_2

    iget-object v6, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->qw:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/providers/contacts/NameSplitter;->ap(I)I

    move-result v6

    :cond_2
    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/NameLookupBuilder;->a(JJLjava/lang/String;I)V

    move-object v0, p0

    move-object v5, v8

    .line 89
    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->a(JJLandroid/content/ContentValues;)V

    .line 91
    :cond_3
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 92
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->d(Lcom/android/providers/contacts/TransactionContext;J)V

    move v6, v7

    .line 93
    goto :goto_0
.end method

.method public b(Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 124
    const-string v0, "data1"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 127
    :goto_0
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->n:[Ljava/lang/String;

    invoke-virtual {p0, p2, v3}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->a(Landroid/content/ContentValues;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    .line 129
    :goto_1
    if-eqz v0, :cond_3

    if-nez v3, :cond_3

    .line 130
    new-instance v0, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct {v0}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    .line 131
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->qw:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v1, v0, v4}, Lcom/android/providers/contacts/NameSplitter;->a(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0, p2}, Lcom/android/providers/contacts/NameSplitter$Name;->c(Landroid/content/ContentValues;)V

    .line 161
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 126
    goto :goto_0

    :cond_2
    move v3, v2

    .line 127
    goto :goto_1

    .line 133
    :cond_3
    if-nez v0, :cond_5

    if-nez v3, :cond_4

    iget-object v5, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->n:[Ljava/lang/String;

    invoke-virtual {p0, p2, v5}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->b(Landroid/content/ContentValues;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 139
    :cond_4
    new-instance v0, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct {v0}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    .line 140
    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/NameSplitter$Name;->b(Landroid/content/ContentValues;)V

    .line 142
    iput v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->ay:I

    .line 143
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->qw:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v2, v0}, Lcom/android/providers/contacts/NameSplitter;->b(Lcom/android/providers/contacts/NameSplitter$Name;)V

    .line 144
    iget v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->ay:I

    .line 145
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->qw:Lcom/android/providers/contacts/NameSplitter;

    iget v4, v0, Lcom/android/providers/contacts/NameSplitter$Name;->ay:I

    invoke-virtual {v3, v4}, Lcom/android/providers/contacts/NameSplitter;->ap(I)I

    move-result v3

    iput v3, v0, Lcom/android/providers/contacts/NameSplitter$Name;->ay:I

    .line 146
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->qw:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v3, v0, v1, v1}, Lcom/android/providers/contacts/NameSplitter;->a(Lcom/android/providers/contacts/NameSplitter$Name;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 147
    const-string v3, "data1"

    invoke-virtual {p2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v1, "data10"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    const-string v1, "data11"

    iget v0, v0, Lcom/android/providers/contacts/NameSplitter$Name;->aC:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 151
    :cond_5
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 152
    const-string v0, "data10"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 153
    const-string v0, "data10"

    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->qw:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v1, v4}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    :cond_6
    const-string v0, "data11"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    const-string v0, "data11"

    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->qw:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v1, v4}, Lcom/android/providers/contacts/NameSplitter;->J(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    return v0
.end method
