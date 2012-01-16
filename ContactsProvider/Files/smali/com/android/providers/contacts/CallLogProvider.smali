.class public Lcom/android/providers/contacts/CallLogProvider;
.super Landroid/content/ContentProvider;
.source "CallLogProvider.java"


# static fields
.field private static final hg:Ljava/util/HashMap;

.field private static final wB:Ljava/lang/String;

.field private static final wC:Landroid/content/UriMatcher;


# instance fields
.field private aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private gD:Lcom/android/providers/contacts/VoicemailPermissions;

.field private kb:Lcom/android/providers/contacts/CallLogInsertionHelper;

.field private wD:Landroid/database/DatabaseUtils$InsertHelper;

.field private wE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 53
    const-string v0, "type"

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/providers/contacts/util/DbQueryUtils;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/CallLogProvider;->wB:Ljava/lang/String;

    .line 62
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/contacts/CallLogProvider;->wC:Landroid/content/UriMatcher;

    .line 64
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->wC:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v2, "calls"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->wC:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v2, "calls/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->wC:Landroid/content/UriMatcher;

    const-string v1, "call_log"

    const-string v2, "calls/filter/*"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/CallLogProvider;->hg:Ljava/util/HashMap;

    .line 74
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->hg:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->hg:Ljava/util/HashMap;

    const-string v1, "number"

    const-string v2, "number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->hg:Ljava/util/HashMap;

    const-string v1, "contact_id"

    const-string v2, "contact_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->hg:Ljava/util/HashMap;

    const-string v1, "firewalltype"

    const-string v2, "firewalltype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->hg:Ljava/util/HashMap;

    const-string v1, "forwarded_call"

    const-string v2, "forwarded_call"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->hg:Ljava/util/HashMap;

    const-string v1, "number_type"

    const-string v2, "number_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->hg:Ljava/util/HashMap;

    const-string v1, "date"

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->hg:Ljava/util/HashMap;

    const-string v1, "duration"

    const-string v2, "duration"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->hg:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->hg:Ljava/util/HashMap;

    const-string v1, "new"

    const-string v2, "new"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->hg:Ljava/util/HashMap;

    const-string v1, "voicemail_uri"

    const-string v2, "voicemail_uri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->hg:Ljava/util/HashMap;

    const-string v1, "is_read"

    const-string v2, "is_read"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->hg:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->hg:Ljava/util/HashMap;

    const-string v1, "numbertype"

    const-string v2, "numbertype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->hg:Ljava/util/HashMap;

    const-string v1, "numberlabel"

    const-string v2, "numberlabel"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->hg:Ljava/util/HashMap;

    const-string v1, "countryiso"

    const-string v2, "countryiso"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->hg:Ljava/util/HashMap;

    const-string v1, "geocoded_location"

    const-string v2, "geocoded_location"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->hg:Ljava/util/HashMap;

    const-string v1, "lookup_uri"

    const-string v2, "lookup_uri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->hg:Ljava/util/HashMap;

    const-string v1, "matched_number"

    const-string v2, "matched_number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->hg:Ljava/util/HashMap;

    const-string v1, "normalized_number"

    const-string v2, "normalized_number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->hg:Ljava/util/HashMap;

    const-string v1, "photo_id"

    const-string v2, "photo_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->hg:Ljava/util/HashMap;

    const-string v1, "formatted_number"

    const-string v2, "formatted_number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private B(Landroid/content/ContentValues;)Z
    .locals 2
    .parameter

    .prologue
    .line 305
    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/database/DatabaseUtils$InsertHelper;)Lcom/android/providers/contacts/DatabaseModifier;
    .locals 3
    .parameter

    .prologue
    .line 301
    new-instance v0, Lcom/android/providers/contacts/DbModifierWithNotification;

    const-string v1, "calls"

    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->context()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/android/providers/contacts/DbModifierWithNotification;-><init>(Ljava/lang/String;Landroid/database/DatabaseUtils$InsertHelper;Landroid/content/Context;)V

    return-object v0
.end method

.method private a(Landroid/net/Uri;Lcom/android/providers/contacts/util/SelectionBuilder;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogProvider;->w(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogProvider;->gD:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v0}, Lcom/android/providers/contacts/VoicemailPermissions;->fr()V

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->wB:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/providers/contacts/util/SelectionBuilder;->V(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    goto :goto_0
.end method

.method private n(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;
    .locals 3
    .parameter

    .prologue
    .line 293
    new-instance v0, Lcom/android/providers/contacts/DbModifierWithNotification;

    const-string v1, "calls"

    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->context()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/android/providers/contacts/DbModifierWithNotification;-><init>(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    return-object v0
.end method

.method private w(Landroid/net/Uri;)Z
    .locals 2
    .parameter

    .prologue
    .line 329
    const-string v0, "allow_voicemails"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private x(Landroid/net/Uri;)V
    .locals 5
    .parameter

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogProvider;->w(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri %s cannot be used for voicemail record. Please set \'%s=true\' in the uri."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string v4, "allow_voicemails"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_0
    return-void
.end method

.method private y(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 354
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 355
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid call id in uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected context()Landroid/content/Context;
    .locals 1

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected createCallLogInsertionHelper(Landroid/content/Context;)Lcom/android/providers/contacts/CallLogInsertionHelper;
    .locals 1
    .parameter

    .prologue
    .line 124
    invoke-static {p1}, Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;->b(Landroid/content/Context;)Lcom/android/providers/contacts/DefaultCallLogInsertionHelper;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 268
    new-instance v0, Lcom/android/providers/contacts/util/SelectionBuilder;

    invoke-direct {v0, p2}, Lcom/android/providers/contacts/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/CallLogProvider;->a(Landroid/net/Uri;Lcom/android/providers/contacts/util/SelectionBuilder;)V

    .line 271
    iget-object v1, p0, Lcom/android/providers/contacts/CallLogProvider;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 272
    sget-object v2, Lcom/android/providers/contacts/CallLogProvider;->wC:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 273
    packed-switch v2, :pswitch_data_0

    .line 278
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot delete that URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/CallLogProvider;->n(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v1

    const-string v2, "calls"

    invoke-virtual {v0}, Lcom/android/providers/contacts/util/SelectionBuilder;->fn()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0, p3}, Lcom/android/providers/contacts/DatabaseModifier;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .locals 1
    .parameter

    .prologue
    .line 129
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->f(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 180
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->wC:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 181
    packed-switch v0, :pswitch_data_0

    .line 189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/calls"

    .line 187
    :goto_0
    return-object v0

    .line 185
    :pswitch_1
    const-string v0, "vnd.android.cursor.item/calls"

    goto :goto_0

    .line 187
    :pswitch_2
    const-string v0, "vnd.android.cursor.dir/calls"

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 195
    sget-object v1, Lcom/android/providers/contacts/CallLogProvider;->hg:Ljava/util/HashMap;

    invoke-static {v1, p2}, Lcom/android/providers/contacts/util/DbQueryUtils;->a(Ljava/util/HashMap;Landroid/content/ContentValues;)V

    .line 198
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/CallLogProvider;->B(Landroid/content/ContentValues;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogProvider;->x(Landroid/net/Uri;)V

    .line 200
    iget-object v1, p0, Lcom/android/providers/contacts/CallLogProvider;->gD:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v1}, Lcom/android/providers/contacts/VoicemailPermissions;->fr()V

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/CallLogProvider;->wD:Landroid/database/DatabaseUtils$InsertHelper;

    if-nez v1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/android/providers/contacts/CallLogProvider;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 204
    new-instance v2, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v3, "calls"

    invoke-direct {v2, v1, v3}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/providers/contacts/CallLogProvider;->wD:Landroid/database/DatabaseUtils$InsertHelper;

    .line 207
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 210
    iget-object v2, p0, Lcom/android/providers/contacts/CallLogProvider;->kb:Lcom/android/providers/contacts/CallLogInsertionHelper;

    invoke-interface {v2, v1}, Lcom/android/providers/contacts/CallLogInsertionHelper;->h(Landroid/content/ContentValues;)V

    .line 212
    iget-object v2, p0, Lcom/android/providers/contacts/CallLogProvider;->wD:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-direct {p0, v2}, Lcom/android/providers/contacts/CallLogProvider;->a(Landroid/database/DatabaseUtils$InsertHelper;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/providers/contacts/DatabaseModifier;->insert(Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 213
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    .line 220
    const-string v4, "number"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 221
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 222
    new-instance v5, Lcom/android/providers/contacts/ContactInfoHelper;

    invoke-static {v4}, Lcom/android/providers/contacts/util/UriUtils;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lcom/android/providers/contacts/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 224
    const-string v6, "number"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 225
    const-string v7, "countryiso"

    invoke-virtual {v1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-virtual {v5, v6, v1}, Lcom/android/providers/contacts/ContactInfoHelper;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;

    move-result-object v1

    .line 227
    iget-object v7, p0, Lcom/android/providers/contacts/CallLogProvider;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-virtual {v5, v6, v1, v7}, Lcom/android/providers/contacts/ContactInfoHelper;->a(Ljava/lang/String;Lcom/android/providers/contacts/ContactInfoHelper$ContactInfo;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 229
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v4, Lmiui/provider/ExtraContacts$SmartDialer;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 231
    :cond_2
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 233
    :cond_3
    return-object v0
.end method

.method public onCreate()Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 106
    const-string v0, "ContactsPerf"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "ContactsPerf"

    const-string v1, "CallLogProvider.onCreate start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/CallLogProvider;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/CallLogProvider;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 111
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/providers/contacts/CallLogProvider;->wE:Z

    .line 114
    new-instance v1, Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-direct {v1, v0}, Lcom/android/providers/contacts/VoicemailPermissions;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/providers/contacts/CallLogProvider;->gD:Lcom/android/providers/contacts/VoicemailPermissions;

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/CallLogProvider;->createCallLogInsertionHelper(Landroid/content/Context;)Lcom/android/providers/contacts/CallLogInsertionHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/CallLogProvider;->kb:Lcom/android/providers/contacts/CallLogInsertionHelper;

    .line 116
    const-string v0, "ContactsPerf"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    const-string v0, "ContactsPerf"

    const-string v1, "CallLogProvider.onCreate finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/provider/ExtraSettings$Secure;->checkPrivacyAndReturnCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-object v0

    .line 138
    :cond_1
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 139
    const-string v1, "calls"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 140
    sget-object v1, Lcom/android/providers/contacts/CallLogProvider;->hg:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 141
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    .line 143
    new-instance v2, Lcom/android/providers/contacts/util/SelectionBuilder;

    invoke-direct {v2, p3}, Lcom/android/providers/contacts/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-direct {p0, p1, v2}, Lcom/android/providers/contacts/CallLogProvider;->a(Landroid/net/Uri;Lcom/android/providers/contacts/util/SelectionBuilder;)V

    .line 146
    sget-object v1, Lcom/android/providers/contacts/CallLogProvider;->wC:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 147
    packed-switch v1, :pswitch_data_0

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :pswitch_0
    const-string v1, "_id"

    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogProvider;->y(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/providers/contacts/util/DbQueryUtils;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/providers/contacts/util/SelectionBuilder;->V(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    .line 169
    :goto_1
    :pswitch_1
    iget-object v1, p0, Lcom/android/providers/contacts/CallLogProvider;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 170
    invoke-virtual {v2}, Lcom/android/providers/contacts/util/SelectionBuilder;->fn()Ljava/lang/String;

    move-result-object v3

    move-object v2, p2

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/android/providers/contacts/CallLogProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 158
    :pswitch_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 159
    const-string v3, "PHONE_NUMBERS_EQUAL(number, "

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 160
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 161
    iget-boolean v1, p0, Lcom/android/providers/contacts/CallLogProvider;->wE:Z

    if-eqz v1, :cond_2

    const-string v1, ", 1)"

    :goto_2
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const-string v1, ", 0)"

    goto :goto_2

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    sget-object v0, Lcom/android/providers/contacts/CallLogProvider;->hg:Ljava/util/HashMap;

    invoke-static {v0, p2}, Lcom/android/providers/contacts/util/DbQueryUtils;->a(Ljava/util/HashMap;Landroid/content/ContentValues;)V

    .line 241
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/CallLogProvider;->B(Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogProvider;->x(Landroid/net/Uri;)V

    .line 245
    :cond_0
    new-instance v0, Lcom/android/providers/contacts/util/SelectionBuilder;

    invoke-direct {v0, p3}, Lcom/android/providers/contacts/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/CallLogProvider;->a(Landroid/net/Uri;Lcom/android/providers/contacts/util/SelectionBuilder;)V

    .line 248
    iget-object v1, p0, Lcom/android/providers/contacts/CallLogProvider;->aJ:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 249
    sget-object v2, Lcom/android/providers/contacts/CallLogProvider;->wC:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 250
    packed-switch v2, :pswitch_data_0

    .line 259
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot update URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :pswitch_0
    const-string v2, "_id"

    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CallLogProvider;->y(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/providers/contacts/util/DbQueryUtils;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/util/SelectionBuilder;->V(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    .line 262
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/CallLogProvider;->n(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/providers/contacts/DatabaseModifier;

    move-result-object v1

    const-string v2, "calls"

    invoke-virtual {v0}, Lcom/android/providers/contacts/util/SelectionBuilder;->fn()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, p2, v0, p4}, Lcom/android/providers/contacts/DatabaseModifier;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
