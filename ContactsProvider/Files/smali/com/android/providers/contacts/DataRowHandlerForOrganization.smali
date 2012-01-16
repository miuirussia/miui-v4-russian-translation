.class public Lcom/android/providers/contacts/DataRowHandlerForOrganization;
.super Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;
.source "DataRowHandlerForOrganization.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    const-string v4, "vnd.android.cursor.item/organization"

    const-string v5, "data2"

    const-string v6, "data3"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
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
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v4

    .line 102
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForOrganization;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 103
    iget-object v5, p0, Lcom/android/providers/contacts/DataRowHandler;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->b(J)V

    .line 104
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->dg:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/providers/contacts/ContactAggregator;->l(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 105
    return v4
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    const-string v0, "data1"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    const-string v0, "data4"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v0

    .line 48
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandlerForOrganization;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 49
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->dg:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v2, p1, p3, p4}, Lcom/android/providers/contacts/ContactAggregator;->l(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 50
    return-wide v0
.end method

.method public a(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 131
    const-string v0, "data4"

    invoke-virtual {p1, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->al(Ljava/lang/String;)V

    .line 132
    const-string v0, "data1"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->k(Ljava/lang/String;I)V

    .line 133
    const-string v0, "data8"

    invoke-virtual {p1, v0, v3}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->k(Ljava/lang/String;I)V

    .line 135
    const-string v0, "data7"

    invoke-virtual {p1, v0, v3}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->k(Ljava/lang/String;I)V

    .line 136
    const-string v0, "data5"

    invoke-virtual {p1, v0, v2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->k(Ljava/lang/String;I)V

    .line 137
    const-string v0, "data9"

    invoke-virtual {p1, v0, v2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->k(Ljava/lang/String;I)V

    .line 138
    const-string v0, "data6"

    invoke-virtual {p1, v0, v2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->k(Ljava/lang/String;I)V

    .line 139
    return-void
.end method

.method public a(Landroid/content/ContentValues;)Z
    .locals 1
    .parameter

    .prologue
    .line 120
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data5"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data6"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data9"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data8"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data7"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "data4"

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
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 56
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    :goto_0
    return v0

    .line 60
    :cond_0
    const-string v2, "data1"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    .line 61
    const-string v3, "data4"

    invoke-virtual {p3, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    .line 62
    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    .line 63
    :cond_1
    invoke-interface {p4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 64
    invoke-interface {p4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 68
    if-eqz v2, :cond_3

    .line 69
    const-string v2, "data1"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    :goto_1
    if-eqz v3, :cond_4

    .line 80
    const-string v0, "data4"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    :goto_2
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, v4, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->b(J)V

    .line 90
    invoke-virtual {p0, p1, p2, v6, v7}, Lcom/android/providers/contacts/DataRowHandlerForOrganization;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 91
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->dg:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0, p1, v6, v7}, Lcom/android/providers/contacts/ContactAggregator;->l(Landroid/database/sqlite/SQLiteDatabase;J)V

    :cond_2
    move v0, v1

    .line 93
    goto :goto_0

    .line 71
    :cond_3
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->dh:[Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v0

    .line 72
    const-string v2, "SELECT data1 FROM data WHERE _id=?"

    iget-object v8, p0, Lcom/android/providers/contacts/DataRowHandler;->dh:[Ljava/lang/String;

    invoke-static {p1, v2, v8}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 82
    :cond_4
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->dh:[Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 83
    const-string v0, "SELECT data4 FROM data WHERE _id=?"

    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->dh:[Ljava/lang/String;

    invoke-static {p1, v0, v2}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2
.end method

.method protected z(I)I
    .locals 1
    .parameter

    .prologue
    .line 110
    packed-switch p1, :pswitch_data_0

    .line 114
    const/16 v0, 0x3e8

    :goto_0
    return v0

    .line 111
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 112
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 113
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
