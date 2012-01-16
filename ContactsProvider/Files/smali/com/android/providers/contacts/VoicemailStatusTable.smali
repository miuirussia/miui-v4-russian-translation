.class public Lcom/android/providers/contacts/VoicemailStatusTable;
.super Ljava/lang/Object;
.source "VoicemailStatusTable.java"

# interfaces
.implements Lcom/android/providers/contacts/VoicemailTable$Delegate;


# static fields
.field private static final pg:Lcom/android/providers/contacts/ProjectionMap;


# instance fields
.field private final jY:Ljava/lang/String;

.field private final jZ:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final ka:Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/android/providers/contacts/ProjectionMap$Builder;

    invoke-direct {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;-><init>()V

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "configuration_state"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "data_channel_state"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "notification_channel_state"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "settings_uri"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "source_package"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    const-string v1, "voicemail_access_uri"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ProjectionMap$Builder;->e(Ljava/lang/String;)Lcom/android/providers/contacts/ProjectionMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/ProjectionMap$Builder;->V()Lcom/android/providers/contacts/ProjectionMap;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/VoicemailStatusTable;->pg:Lcom/android/providers/contacts/ProjectionMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->jY:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mContext:Landroid/content/Context;

    .line 57
    iput-object p3, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->jZ:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 58
    iput-object p4, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->ka:Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;

    .line 59
    return-void
.end method

.method private n(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;
    .locals 3
    .parameter

    .prologue
    .line 124
    new-instance v0, Lcom/android/providers/contacts/DbModifierWithNotification;

    iget-object v1, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->jY:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/providers/contacts/DbModifierWithNotification;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->jZ:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 104
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->cw()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/android/providers/contacts/util/DbQueryUtils;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/VoicemailStatusTable;->n(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v0

    iget-object v2, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->jY:Ljava/lang/String;

    invoke-interface {v0, v2, p2, v1, p4}, Lcom/android/providers/contacts/DatabaseModifier;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->jZ:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 78
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->cw()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/android/providers/contacts/util/DbQueryUtils;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/VoicemailStatusTable;->n(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v0

    iget-object v2, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->jY:Ljava/lang/String;

    invoke-interface {v0, v2, v1, p3}, Lcom/android/providers/contacts/DatabaseModifier;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 86
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 87
    iget-object v1, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->jY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 88
    sget-object v1, Lcom/android/providers/contacts/VoicemailStatusTable;->pg:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 89
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    .line 91
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->cw()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/android/providers/contacts/util/DbQueryUtils;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 92
    iget-object v1, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->jZ:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v2, p2

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    .line 93
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/VoicemailContract$Status;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 97
    :cond_0
    return-object v0
.end method

.method public b(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 120
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "File operation is not supported for status table"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 63
    iget-object v1, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->jZ:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 64
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 65
    iget-object v3, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->ka:Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;

    invoke-interface {v3, p1, v2}, Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;->a(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;)V

    .line 66
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/VoicemailStatusTable;->n(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v1

    iget-object v3, p0, Lcom/android/providers/contacts/VoicemailStatusTable;->jY:Ljava/lang/String;

    invoke-interface {v1, v3, v0, v2}, Lcom/android/providers/contacts/DatabaseModifier;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 67
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 71
    :cond_0
    return-object v0
.end method

.method public e(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 111
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "vnd.android.cursor.item/voicemail.source.status"

    .line 114
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "vnd.android.cursor.dir/voicemail.source.status"

    goto :goto_0
.end method
