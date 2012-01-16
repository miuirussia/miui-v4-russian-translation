.class public Lcom/android/providers/contacts/ContactInfoHelper;
.super Ljava/lang/Object;
.source "ContactInfoHelper.java"


# instance fields
.field private final bl:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/providers/contacts/ContactInfoHelper;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/providers/contacts/ContactInfoHelper;->bl:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 267
    iget-object v0, p0, Lcom/android/providers/contacts/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/providers/contacts/ContactInfoHelper$PhoneQuery;->gu:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 273
    if-eqz v1, :cond_1

    .line 274
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    new-instance v0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;

    invoke-direct {v0}, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;-><init>()V

    .line 276
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 277
    const/4 v2, 0x7

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 278
    invoke-static {v4, v5, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->kN:Landroid/net/Uri;

    .line 279
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->name:Ljava/lang/String;

    .line 280
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->type:I

    .line 281
    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->label:Ljava/lang/String;

    .line 282
    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->number:Ljava/lang/String;

    .line 283
    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 284
    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->kP:J

    .line 285
    const/16 v2, 0x8

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/contacts/util/UriUtils;->ak(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->kQ:Landroid/net/Uri;

    .line 287
    invoke-direct {p0, p1, v3, p2}, Lcom/android/providers/contacts/ContactInfoHelper;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->kO:Ljava/lang/String;

    .line 292
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 297
    :goto_1
    return-object v0

    .line 290
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->kR:Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;

    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 295
    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 116
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-object v5

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://yellowpage/sp"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "name"

    aput-object v3, v2, v6

    const-string v3, "addr=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p3, v4, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 125
    if-eqz v2, :cond_0

    .line 127
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    new-instance v0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;

    invoke-direct {v0}, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :try_start_1
    iput-object p1, v0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->number:Ljava/lang/String;

    .line 130
    iput-object p4, v0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 131
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2}, Lcom/android/providers/contacts/ContactInfoHelper;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->kO:Ljava/lang/String;

    .line 132
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->name:Ljava/lang/String;

    .line 133
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->numberType:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v0

    .line 138
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    .line 135
    :catch_1
    move-exception v1

    move-object v5, v0

    move-object v0, v1

    goto :goto_1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 313
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    const-string p1, ""

    .line 323
    :cond_0
    :goto_0
    return-object p1

    .line 317
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 321
    iget-object p3, p0, Lcom/android/providers/contacts/ContactInfoHelper;->bl:Ljava/lang/String;

    .line 323
    :cond_2
    invoke-static {p1, p2, p3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 186
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 197
    const-string v3, "upper(data1)=? AND mimetype=\'vnd.android.cursor.item/sip_address\'"

    .line 200
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 202
    iget-object v0, p0, Lcom/android/providers/contacts/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 210
    if-eqz v1, :cond_1

    .line 211
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    new-instance v0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;

    invoke-direct {v0}, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;-><init>()V

    .line 222
    const-string v3, "contact_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 224
    const-string v5, "lookup"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 226
    invoke-static {v3, v4, v5}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->kN:Landroid/net/Uri;

    .line 227
    const-string v3, "display_name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->name:Ljava/lang/String;

    .line 230
    const/4 v3, 0x3

    iput v3, v0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->type:I

    .line 231
    iput-object v2, v0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->label:Ljava/lang/String;

    .line 235
    const-string v3, "data1"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->number:Ljava/lang/String;

    .line 236
    iput-object v2, v0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 237
    const-string v3, "photo_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->kP:J

    .line 239
    const-string v3, "photo_uri"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/providers/contacts/util/UriUtils;->ak(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->kQ:Landroid/net/Uri;

    .line 241
    iput-object v2, v0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->kO:Ljava/lang/String;

    .line 245
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 250
    :goto_1
    return-object v0

    .line 243
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->kR:Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 248
    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 147
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 149
    const-string v0, "name"

    iget-object v1, p2, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v0, "numbertype"

    iget v1, p2, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 151
    const-string v0, "numberlabel"

    iget-object v1, p2, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v0, "lookup_uri"

    iget-object v1, p2, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->kN:Landroid/net/Uri;

    invoke-static {v1}, Lcom/android/providers/contacts/util/UriUtils;->v(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v0, "matched_number"

    iget-object v1, p2, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v0, "normalized_number"

    iget-object v1, p2, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v0, "photo_id"

    iget-wide v3, p2, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->kP:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 156
    const-string v0, "formatted_number"

    iget-object v1, p2, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->kO:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v3, "contact_id"

    iget-object v0, p2, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->kN:Landroid/net/Uri;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 159
    const-string v0, "number_type"

    iget v1, p2, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->numberType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    const-string v1, "number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, "calls"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p3, v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 166
    return-void

    .line 157
    :cond_0
    iget-object v0, p2, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->kN:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 64
    .line 65
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v1

    .line 66
    if-eqz v1, :cond_6

    .line 67
    const/4 v0, 0x1

    invoke-virtual {v1, v0, v5}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {v1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v1

    .line 72
    :goto_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactInfoHelper;->f(Ljava/lang/String;)Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;

    move-result-object v2

    .line 75
    if-eqz v2, :cond_0

    sget-object v4, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->kR:Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;

    if-ne v2, v4, :cond_1

    .line 77
    :cond_0
    const/16 v4, 0x40

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 79
    invoke-direct {p0, v4, p2, v0}, Lcom/android/providers/contacts/ContactInfoHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;

    move-result-object v2

    .line 88
    :cond_1
    :goto_1
    if-nez v2, :cond_3

    move-object v0, v3

    .line 111
    :goto_2
    return-object v0

    .line 84
    :cond_2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/contacts/ContactInfoHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;

    move-result-object v2

    goto :goto_1

    .line 95
    :cond_3
    sget-object v4, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->kR:Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;

    if-ne v2, v4, :cond_5

    .line 96
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/providers/contacts/ContactInfoHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;

    move-result-object v1

    .line 98
    if-eqz v1, :cond_4

    move-object v0, v1

    .line 99
    goto :goto_2

    .line 102
    :cond_4
    new-instance v1, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;

    invoke-direct {v1}, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;-><init>()V

    .line 103
    iput-object p1, v1, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->number:Ljava/lang/String;

    .line 104
    invoke-direct {p0, p1, v3, p2}, Lcom/android/providers/contacts/ContactInfoHelper;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->kO:Ljava/lang/String;

    .line 105
    iput-object v0, v1, Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;->normalizedNumber:Ljava/lang/String;

    move-object v0, v1

    goto :goto_2

    :cond_5
    move-object v0, v2

    .line 108
    goto :goto_2

    :cond_6
    move-object v0, p1

    move-object v1, p1

    goto :goto_0
.end method
