.class public Lcom/android/providers/contacts/DbModifierWithNotification;
.super Ljava/lang/Object;
.source "DbModifierWithNotification.java"

# interfaces
.implements Lcom/android/providers/contacts/DatabaseModifier;


# static fields
.field private static final cq:[Ljava/lang/String;


# instance fields
.field private final eo:Landroid/database/sqlite/SQLiteDatabase;

.field private final gD:Lcom/android/providers/contacts/VoicemailPermissions;

.field private final jY:Ljava/lang/String;

.field private final mBaseUri:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;

.field private final qH:Landroid/database/DatabaseUtils$InsertHelper;

.field private final qI:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "source_package"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/DbModifierWithNotification;->cq:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/database/DatabaseUtils$InsertHelper;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/providers/contacts/DbModifierWithNotification;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/DatabaseUtils$InsertHelper;Landroid/content/Context;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/providers/contacts/DbModifierWithNotification;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/DatabaseUtils$InsertHelper;Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/DatabaseUtils$InsertHelper;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->jY:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->eo:Landroid/database/sqlite/SQLiteDatabase;

    .line 89
    iput-object p3, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->qH:Landroid/database/DatabaseUtils$InsertHelper;

    .line 90
    iput-object p4, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mContext:Landroid/content/Context;

    .line 91
    iget-object v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->jY:Ljava/lang/String;

    const-string v1, "voicemail_status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/provider/VoicemailContract$Status;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    iput-object v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mBaseUri:Landroid/net/Uri;

    .line 93
    iget-object v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->jY:Ljava/lang/String;

    const-string v1, "calls"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->qI:Z

    .line 94
    new-instance v0, Lcom/android/providers/contacts/VoicemailPermissions;

    iget-object v1, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/VoicemailPermissions;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->gD:Lcom/android/providers/contacts/VoicemailPermissions;

    .line 95
    return-void

    .line 91
    :cond_0
    sget-object v0, Landroid/provider/VoicemailContract$Voicemails;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;Ljava/util/Set;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    iget-boolean v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->qI:Z

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.intent.action.NEW_VOICEMAIL"

    aput-object v1, v0, v2

    const-string v1, "android.intent.action.PROVIDER_CHANGED"

    aput-object v1, v0, v3

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/contacts/DbModifierWithNotification;->a(Landroid/net/Uri;Ljava/util/Set;[Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 134
    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.intent.action.PROVIDER_CHANGED"

    aput-object v1, v0, v2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/contacts/DbModifierWithNotification;->a(Landroid/net/Uri;Ljava/util/Set;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private varargs a(Landroid/net/Uri;Ljava/util/Set;[Ljava/lang/String;)V
    .locals 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 202
    iget-object v1, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 203
    invoke-direct {p0}, Lcom/android/providers/contacts/DbModifierWithNotification;->fe()Ljava/util/Collection;

    move-result-object v4

    .line 205
    move-object/from16 v0, p3

    array-length v5, v0

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_6

    aget-object v6, p3, v3

    .line 207
    const-string v1, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 209
    move-object/from16 v0, p1

    invoke-direct {p0, v6, v0}, Lcom/android/providers/contacts/DbModifierWithNotification;->b(Ljava/lang/String;Landroid/net/Uri;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 212
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->gD:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/providers/contacts/VoicemailPermissions;->X(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    :cond_1
    new-instance v9, Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-direct {v9, v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 218
    invoke-virtual {v9, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 219
    if-eqz v7, :cond_2

    if-eqz v4, :cond_2

    .line 220
    const-string v2, "com.android.voicemail.extra.SELF_CHANGE"

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v9, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 223
    :cond_2
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "com.android.voicemail.permission.ADD_VOICEMAIL"

    .line 225
    :goto_2
    iget-object v10, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v9, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 226
    const-string v10, "DbModifierWithVmNotification"

    const-string v11, "Sent intent. act:%s, url:%s, comp:%s, perm:%s, self_change:%s"

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v13

    const/4 v1, 0x3

    aput-object v2, v12, v1

    const/4 v2, 0x4

    const-string v1, "com.android.voicemail.extra.SELF_CHANGE"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "com.android.voicemail.extra.SELF_CHANGE"

    const/4 v13, 0x0

    invoke-virtual {v9, v1, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_3
    aput-object v1, v12, v2

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 223
    :cond_3
    const-string v2, "com.android.voicemail.permission.READ_WRITE_ALL_VOICEMAIL"

    goto :goto_2

    .line 226
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 205
    :cond_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_0

    .line 234
    :cond_6
    return-void
.end method

.method private b(Ljava/lang/String;Landroid/net/Uri;)Ljava/util/List;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 238
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 239
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 242
    iget-object v2, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 243
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 244
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 246
    :cond_0
    return-object v1
.end method

.method private c(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 173
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 174
    iget-object v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->eo:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->jY:Ljava/lang/String;

    sget-object v2, Lcom/android/providers/contacts/DbModifierWithNotification;->cq:[Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "source_package IS NOT NULL"

    aput-object v4, v3, v9

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v3}, Lcom/android/providers/contacts/util/DbQueryUtils;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, p2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 177
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    :cond_0
    invoke-static {v0}, Lcom/android/common/io/MoreCloseables;->b(Landroid/database/Cursor;)V

    .line 181
    return-object v8
.end method

.method private fd()V
    .locals 4

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 127
    return-void
.end method

.method private fe()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 254
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 255
    if-nez v0, :cond_0

    .line 256
    const/4 v0, 0x0

    .line 258
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method private m(Landroid/content/ContentValues;)Ljava/util/Set;
    .locals 2
    .parameter

    .prologue
    .line 191
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 192
    const-string v1, "source_package"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    const-string v1, "source_package"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_0
    return-object v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-direct {p0, p2, p3}, Lcom/android/providers/contacts/DbModifierWithNotification;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->eo:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 157
    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mBaseUri:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "android.intent.action.PROVIDER_CHANGED"

    aput-object v5, v3, v4

    invoke-direct {p0, v2, v0, v3}, Lcom/android/providers/contacts/DbModifierWithNotification;->a(Landroid/net/Uri;Ljava/util/Set;[Ljava/lang/String;)V

    .line 160
    :cond_0
    if-lez v1, :cond_1

    iget-boolean v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->qI:Z

    if-eqz v0, :cond_1

    .line 161
    invoke-direct {p0}, Lcom/android/providers/contacts/DbModifierWithNotification;->fd()V

    .line 163
    :cond_1
    return v1
.end method

.method public insert(Landroid/content/ContentValues;)J
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 113
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/DbModifierWithNotification;->m(Landroid/content/ContentValues;)Ljava/util/Set;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->qH:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v1, p1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 115
    cmp-long v3, v1, v4

    if-lez v3, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    iget-object v3, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mBaseUri:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/providers/contacts/DbModifierWithNotification;->a(Landroid/net/Uri;Ljava/util/Set;)V

    .line 119
    :cond_0
    cmp-long v0, v1, v4

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->qI:Z

    if-eqz v0, :cond_1

    .line 120
    invoke-direct {p0}, Lcom/android/providers/contacts/DbModifierWithNotification;->fd()V

    .line 122
    :cond_1
    return-wide v1
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 99
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/DbModifierWithNotification;->m(Landroid/content/ContentValues;)Ljava/util/Set;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->eo:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 101
    cmp-long v3, v1, v4

    if-lez v3, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mBaseUri:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/providers/contacts/DbModifierWithNotification;->a(Landroid/net/Uri;Ljava/util/Set;)V

    .line 105
    :cond_0
    cmp-long v0, v1, v4

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->qI:Z

    if-eqz v0, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/android/providers/contacts/DbModifierWithNotification;->fd()V

    .line 108
    :cond_1
    return-wide v1
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    invoke-direct {p0, p3, p4}, Lcom/android/providers/contacts/DbModifierWithNotification;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 142
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/DbModifierWithNotification;->m(Landroid/content/ContentValues;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 143
    iget-object v1, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->eo:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 144
    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->mBaseUri:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "android.intent.action.PROVIDER_CHANGED"

    aput-object v5, v3, v4

    invoke-direct {p0, v2, v0, v3}, Lcom/android/providers/contacts/DbModifierWithNotification;->a(Landroid/net/Uri;Ljava/util/Set;[Ljava/lang/String;)V

    .line 147
    :cond_0
    if-lez v1, :cond_1

    iget-boolean v0, p0, Lcom/android/providers/contacts/DbModifierWithNotification;->qI:Z

    if-eqz v0, :cond_1

    .line 148
    invoke-direct {p0}, Lcom/android/providers/contacts/DbModifierWithNotification;->fd()V

    .line 150
    :cond_1
    return v1
.end method
