.class Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;
.super Ljava/lang/Thread;
.source "SimStateChangedService.java"


# instance fields
.field private final eo:Landroid/database/sqlite/SQLiteDatabase;

.field private final mContext:Landroid/content/Context;

.field private final vG:I

.field private final vH:Ljava/lang/String;

.field private final vI:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private vJ:[Ljava/lang/String;

.field protected final vK:[Ljava/lang/String;

.field vL:Ljava/util/ArrayList;

.field final synthetic vM:Lcom/android/providers/contacts/SimStateChangedService;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/SimStateChangedService;Landroid/content/Context;ILjava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    iput-object p1, p0, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->vM:Lcom/android/providers/contacts/SimStateChangedService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 82
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "SIM"

    aput-object v1, v0, v2

    const-string v1, "com.android.contacts.sim"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->vJ:[Ljava/lang/String;

    .line 92
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v2

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "emails"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->vK:[Ljava/lang/String;

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->vL:Ljava/util/ArrayList;

    .line 97
    iput-object p2, p0, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->mContext:Landroid/content/Context;

    .line 98
    iput p3, p0, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->vG:I

    .line 99
    iput-object p4, p0, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->vH:Ljava/lang/String;

    .line 100
    invoke-static {p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->f(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->vI:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 101
    iget-object v0, p0, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->vI:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->eo:Landroid/database/sqlite/SQLiteDatabase;

    .line 102
    return-void
.end method

.method private a(Landroid/database/Cursor;Landroid/content/ContentResolver;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    .line 180
    new-instance v0, Lcom/android/providers/contacts/SimStateChangedService$NamePhoneTypePair;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/SimStateChangedService$NamePhoneTypePair;-><init>(Ljava/lang/String;)V

    .line 182
    iget-object v1, v0, Lcom/android/providers/contacts/SimStateChangedService$NamePhoneTypePair;->name:Ljava/lang/String;

    .line 183
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 184
    iget-object v3, p0, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->vM:Lcom/android/providers/contacts/SimStateChangedService;

    iget v0, v0, Lcom/android/providers/contacts/SimStateChangedService$NamePhoneTypePair;->gC:I

    invoke-static {v3, v2, v0}, Lcom/android/providers/contacts/SimStateChangedService;->a(Lcom/android/providers/contacts/SimStateChangedService;Ljava/lang/String;I)I

    move-result v0

    .line 189
    iget-object v3, p0, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->vL:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 191
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 193
    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 196
    const-string v6, "account_name"

    const-string v7, "SIM"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 197
    const-string v6, "account_type"

    const-string v7, "com.android.contacts.sim"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 198
    const-string v6, "aggregation_mode"

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 199
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 202
    const-string v6, "raw_contact_id"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 203
    const-string v6, "mimetype"

    const-string v7, "vnd.android.cursor.item/name"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 204
    const-string v6, "data1"

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 205
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 208
    const-string v5, "raw_contact_id"

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 209
    const-string v3, "mimetype"

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 210
    const-string v3, "data2"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 211
    const-string v0, "data1"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 212
    const-string v0, "is_primary"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 213
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-direct {p0, v4, p2}, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->a(Ljava/util/ArrayList;Landroid/content/ContentResolver;)V

    .line 216
    return-void
.end method

.method private a(Ljava/util/ArrayList;Landroid/content/ContentResolver;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 222
    iget-object v0, p0, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->vL:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 223
    iget-object v0, p0, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->vL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    .line 225
    :try_start_0
    const-string v0, "com.android.contacts"

    iget-object v1, p0, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->vL:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 231
    :goto_0
    iget-object v0, p0, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->vL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 233
    :cond_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    const-string v1, "SimStateChangedService"

    const-string v2, "%s: %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 228
    :catch_1
    move-exception v0

    .line 229
    const-string v1, "SimStateChangedService"

    const-string v2, "%s: %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private gh()V
    .locals 3

    .prologue
    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 121
    iget-object v0, p0, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->eo:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM raw_contacts WHERE account_name = ? AND account_type = ?"

    iget-object v2, p0, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->vJ:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->eo:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM accounts WHERE account_name=? AND account_type=?"

    iget-object v2, p0, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->vJ:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 133
    iget-object v0, p0, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->eo:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/android/providers/contacts/T9SearchSupport;->l(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 134
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->bF()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/T9SearchSupport;->load()V

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 139
    return-void
.end method

.method private gi()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 142
    iget-object v0, p0, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->eo:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO accounts (account_name,account_type) VALUES (?,?)"

    iget-object v2, p0, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->vJ:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 146
    iget-object v0, p0, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://icc/adn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->vK:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 153
    if-eqz v1, :cond_2

    .line 155
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->a(Landroid/database/Cursor;Landroid/content/ContentResolver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 160
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->vL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "com.android.contacts"

    iget-object v3, p0, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->vL:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 170
    :cond_1
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 177
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    :try_start_2
    const-string v2, "SimStateChangedService"

    const-string v3, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 166
    :catch_1
    move-exception v0

    .line 167
    const-string v2, "SimStateChangedService"

    const-string v3, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 107
    :try_start_0
    const-string v0, "com.android.contacts.sim_loaded"

    iget-object v1, p0, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->vH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-direct {p0}, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->gh()V

    .line 109
    invoke-direct {p0}, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->gi()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->vM:Lcom/android/providers/contacts/SimStateChangedService;

    iget v1, p0, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->vG:I

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/SimStateChangedService;->stopSelf(I)V

    .line 117
    return-void

    .line 110
    :cond_1
    :try_start_1
    const-string v0, "com.android.contacts.sim_absent"

    iget-object v1, p0, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->vH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->gh()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->vM:Lcom/android/providers/contacts/SimStateChangedService;

    iget v2, p0, Lcom/android/providers/contacts/SimStateChangedService$SyncSimContactThread;->vG:I

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/SimStateChangedService;->stopSelf(I)V

    throw v0
.end method
