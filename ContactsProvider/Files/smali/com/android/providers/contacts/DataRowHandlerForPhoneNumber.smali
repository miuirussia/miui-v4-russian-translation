.class public Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;
.super Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;
.source "DataRowHandlerForPhoneNumber.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    const-string v4, "vnd.android.cursor.item/phone_v2"

    const-string v5, "data2"

    const-string v6, "data3"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 129
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->dh:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 130
    const-string v0, "phone_lookup"

    const-string v1, "data_id=?"

    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->dh:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 131
    if-eqz p6, :cond_0

    .line 132
    invoke-static {p6}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 135
    const-string v2, "raw_contact_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 136
    const-string v2, "data_id"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 137
    const-string v2, "normalized_number"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v2, "min_match"

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v2, "phone_lookup"

    invoke-virtual {p1, v2, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 142
    if-eqz p7, :cond_0

    invoke-virtual {p7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const-string v0, "normalized_number"

    invoke-virtual {v1, v0, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, "min_match"

    invoke-static {p7}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, "phone_lookup"

    invoke-virtual {p1, v0, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 150
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 17
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 113
    const/4 v3, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 115
    invoke-super/range {p0 .. p3}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v16

    .line 117
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v10}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->a(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;Ljava/lang/String;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/DataRowHandler;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aQ()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->bF()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->aY()J

    move-result-wide v14

    move-wide v10, v7

    move-wide v12, v5

    invoke-virtual/range {v9 .. v15}, Lcom/android/providers/contacts/T9SearchSupport;->c(JJJ)V

    .line 121
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/DataRowHandler;->dg:Lcom/android/providers/contacts/ContactAggregator;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v5, v6}, Lcom/android/providers/contacts/ContactAggregator;->k(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 122
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 123
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->d(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 124
    return v16
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 19
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    const-string v4, "data1"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 48
    const-string v4, "data1"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 49
    const/4 v11, 0x0

    .line 50
    invoke-static {v10}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v4

    .line 51
    if-eqz v4, :cond_0

    .line 52
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v11

    .line 53
    const-string v4, "data4"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v8

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p3

    .line 58
    invoke-direct/range {v4 .. v11}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->a(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;Ljava/lang/String;)V

    .line 59
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/DataRowHandler;->dg:Lcom/android/providers/contacts/ContactAggregator;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/providers/contacts/ContactAggregator;->k(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 60
    invoke-virtual/range {p0 .. p4}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 61
    if-eqz v11, :cond_1

    .line 62
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->d(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 65
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/DataRowHandler;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aQ()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 66
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->bF()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->aY()J

    move-result-wide v16

    move-wide v12, v8

    move-wide/from16 v14, p3

    move-object/from16 v18, v10

    invoke-virtual/range {v11 .. v18}, Lcom/android/providers/contacts/T9SearchSupport;->b(JJJLjava/lang/String;)V

    .line 72
    :cond_2
    :goto_0
    return-wide v8

    .line 70
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v8

    goto :goto_0
.end method

.method public a(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;)V
    .locals 4
    .parameter

    .prologue
    .line 174
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    invoke-virtual {p1, v2}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->an(Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x0

    .line 187
    invoke-static {v1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v1

    .line 188
    if-eqz v1, :cond_2

    .line 189
    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 191
    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    invoke-virtual {p1, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->an(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/ContentValues;)Z
    .locals 1
    .parameter

    .prologue
    .line 169
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    const/4 v9, 0x0

    .line 79
    const/4 v10, 0x0

    .line 80
    const-string v3, "data1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    const-string v3, "data1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 82
    if-eqz v9, :cond_0

    .line 83
    invoke-static {v9}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v3

    .line 84
    if-eqz v3, :cond_0

    .line 85
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v10

    .line 86
    const-string v3, "data4"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 92
    const/4 v3, 0x0

    .line 107
    :goto_0
    return v3

    .line 95
    :cond_1
    const-string v3, "data1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 97
    const/4 v3, 0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 98
    invoke-direct/range {v3 .. v10}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->a(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;Ljava/lang/String;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/DataRowHandler;->dg:Lcom/android/providers/contacts/ContactAggregator;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v5, v6}, Lcom/android/providers/contacts/ContactAggregator;->k(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 100
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V

    .line 101
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->d(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 102
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/DataRowHandler;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->aQ()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 103
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->bF()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->aY()J

    move-result-wide v15

    move-wide v11, v7

    move-wide v13, v5

    move-object/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Lcom/android/providers/contacts/T9SearchSupport;->a(JJJLjava/lang/String;)V

    .line 107
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method protected z(I)I
    .locals 1
    .parameter

    .prologue
    .line 154
    packed-switch p1, :pswitch_data_0

    .line 163
    const/16 v0, 0x3e8

    :goto_0
    return v0

    .line 155
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 156
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 157
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 158
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 159
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 160
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 161
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 162
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
