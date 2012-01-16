.class public Lcom/android/providers/contacts/VoicemailContentProvider;
.super Landroid/content/ContentProvider;
.source "VoicemailContentProvider.java"

# interfaces
.implements Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;


# instance fields
.field private gD:Lcom/android/providers/contacts/VoicemailPermissions;

.field private gE:Lcom/android/providers/contacts/VoicemailTable$Delegate;

.field private gF:Lcom/android/providers/contacts/VoicemailTable$Delegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 166
    return-void
.end method

.method private varargs a(Landroid/net/Uri;[Landroid/content/ContentValues;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/VoicemailContentProvider;->f(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v1

    .line 313
    array-length v2, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p2, v0

    .line 314
    invoke-direct {p0, v1, v3}, Lcom/android/providers/contacts/VoicemailContentProvider;->b(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;)V

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_0
    return-object v1
.end method

.method private a(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Lcom/android/providers/contacts/VoicemailTable$Delegate;
    .locals 3
    .parameter

    .prologue
    .line 149
    sget-object v0, Lcom/android/providers/contacts/VoicemailContentProvider$1;->rd:[I

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->cv()Lcom/android/providers/contacts/VoicemailUriType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/providers/contacts/VoicemailUriType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impossible, all cases are covered."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :pswitch_0
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->gF:Lcom/android/providers/contacts/VoicemailTable$Delegate;

    .line 155
    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->gE:Lcom/android/providers/contacts/VoicemailTable$Delegate;

    goto :goto_0

    .line 157
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid uri type for uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 325
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    const-string v0, "Permission denied for URI: %s\n. Package %s cannot perform this operation for %s. Requires %s permission."

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    const-string v3, "com.android.voicemail.permission.READ_WRITE_ALL_VOICEMAIL"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 330
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 332
    :cond_0
    return-void
.end method

.method private b(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)V
    .locals 5
    .parameter

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->gD:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v0}, Lcom/android/providers/contacts/VoicemailPermissions;->fp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 344
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->cu()Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Provider %s does not have %s permission.\nPlease set query parameter \'%s\' in the URI.\nURI: %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "com.android.voicemail.permission.READ_WRITE_ALL_VOICEMAIL"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "source_package"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getSourcePackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/contacts/VoicemailContentProvider;->a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 354
    :cond_1
    return-void
.end method

.method private b(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 265
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->cu()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "source_package"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getSourcePackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "source_package"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "source_package in URI was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getSourcePackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but doesn\'t match source_package in ContentValues which was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "source_package"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_0
    return-void
.end method

.method private cm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->gD:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v0}, Lcom/android/providers/contacts/VoicemailPermissions;->fp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    const/4 v0, 0x0

    .line 400
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "source_package"

    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/providers/contacts/util/DbQueryUtils;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private e(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    .locals 2
    .parameter

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->context()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->checkCallingUriPermission(Landroid/net/Uri;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 291
    invoke-static {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->g(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v0

    .line 293
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/VoicemailContentProvider;->f(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v0

    goto :goto_0
.end method

.method private f(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    .locals 1
    .parameter

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->gD:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v0}, Lcom/android/providers/contacts/VoicemailPermissions;->fq()V

    .line 302
    invoke-static {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->g(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v0

    .line 303
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/VoicemailContentProvider;->b(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)V

    .line 304
    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 279
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/providers/contacts/VoicemailContentProvider;->openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 247
    const-string v0, "source_package"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->cu()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getSourcePackage()Ljava/lang/String;

    move-result-object v0

    .line 250
    :goto_0
    const-string v1, "source_package"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->gD:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v0}, Lcom/android/providers/contacts/VoicemailPermissions;->fp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 254
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "source_package"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/contacts/VoicemailContentProvider;->a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 258
    :cond_1
    return-void

    .line 248
    :cond_2
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method context()Landroid/content/Context;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method createCallLogInsertionHelper(Landroid/content/Context;)Lcom/android/providers/contacts/CallLogInsertionHelper;
    .locals 1
    .parameter

    .prologue
    .line 77
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
    .line 129
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/VoicemailContentProvider;->f(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v0

    .line 130
    new-instance v1, Lcom/android/providers/contacts/util/SelectionBuilder;

    invoke-direct {v1, p2}, Lcom/android/providers/contacts/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->cm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/util/SelectionBuilder;->V(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    .line 132
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/VoicemailContentProvider;->a(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Lcom/android/providers/contacts/VoicemailTable$Delegate;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/providers/contacts/util/SelectionBuilder;->fn()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1, p3}, Lcom/android/providers/contacts/VoicemailTable$Delegate;->a(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getCallingPackage()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 365
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 366
    if-nez v2, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-object v0

    .line 369
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->context()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 370
    if-eqz v3, :cond_0

    array-length v2, v3

    if-eqz v2, :cond_0

    .line 373
    array-length v0, v3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 374
    aget-object v0, v3, v1

    goto :goto_0

    .line 379
    :cond_2
    aget-object v0, v3, v1

    .line 380
    array-length v4, v3

    move v2, v1

    move-object v1, v0

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v0, v3, v2

    .line 381
    iget-object v5, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->gD:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v5, v0}, Lcom/android/providers/contacts/VoicemailPermissions;->X(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 385
    iget-object v5, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->gD:Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-virtual {v5, v0}, Lcom/android/providers/contacts/VoicemailPermissions;->W(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 380
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 389
    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method

.method getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .locals 1
    .parameter

    .prologue
    .line 82
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->f(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 92
    .line 94
    :try_start_0
    invoke-static {p1}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->g(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 99
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/VoicemailContentProvider;->a(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Lcom/android/providers/contacts/VoicemailTable$Delegate;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/providers/contacts/VoicemailTable$Delegate;->e(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 95
    :catch_0
    move-exception v0

    .line 97
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 104
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/ContentValues;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/VoicemailContentProvider;->a(Landroid/net/Uri;[Landroid/content/ContentValues;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v0

    .line 105
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/VoicemailContentProvider;->a(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Lcom/android/providers/contacts/VoicemailTable$Delegate;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/android/providers/contacts/VoicemailTable$Delegate;->c(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 60
    const-string v0, "ContactsPerf"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "ContactsPerf"

    const-string v1, "VoicemailContentProvider.onCreate start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->context()Landroid/content/Context;

    move-result-object v2

    .line 64
    new-instance v0, Lcom/android/providers/contacts/VoicemailPermissions;

    invoke-direct {v0, v2}, Lcom/android/providers/contacts/VoicemailPermissions;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->gD:Lcom/android/providers/contacts/VoicemailPermissions;

    .line 65
    new-instance v0, Lcom/android/providers/contacts/VoicemailContentTable;

    const-string v1, "calls"

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/VoicemailContentProvider;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/VoicemailContentProvider;->createCallLogInsertionHelper(Landroid/content/Context;)Lcom/android/providers/contacts/CallLogInsertionHelper;

    move-result-object v5

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/VoicemailContentTable;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;Lcom/android/providers/contacts/CallLogInsertionHelper;)V

    iput-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->gE:Lcom/android/providers/contacts/VoicemailTable$Delegate;

    .line 67
    new-instance v0, Lcom/android/providers/contacts/VoicemailStatusTable;

    const-string v1, "voicemail_status"

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/VoicemailContentProvider;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/providers/contacts/VoicemailStatusTable;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/database/sqlite/SQLiteOpenHelper;Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;)V

    iput-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider;->gF:Lcom/android/providers/contacts/VoicemailTable$Delegate;

    .line 69
    const-string v0, "ContactsPerf"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    const-string v0, "ContactsPerf"

    const-string v1, "VoicemailContentProvider.onCreate finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 137
    .line 138
    const-string v0, "r"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/VoicemailContentProvider;->e(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v0

    .line 144
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/VoicemailContentProvider;->a(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Lcom/android/providers/contacts/VoicemailTable$Delegate;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Lcom/android/providers/contacts/VoicemailTable$Delegate;->b(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    .line 141
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/VoicemailContentProvider;->f(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v0

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/VoicemailContentProvider;->e(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v1

    .line 112
    new-instance v2, Lcom/android/providers/contacts/util/SelectionBuilder;

    invoke-direct {v2, p3}, Lcom/android/providers/contacts/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->cm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/providers/contacts/util/SelectionBuilder;->V(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    .line 114
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/VoicemailContentProvider;->a(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Lcom/android/providers/contacts/VoicemailTable$Delegate;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/providers/contacts/util/SelectionBuilder;->fn()Ljava/lang/String;

    move-result-object v3

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/providers/contacts/VoicemailTable$Delegate;->a(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/ContentValues;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/VoicemailContentProvider;->a(Landroid/net/Uri;[Landroid/content/ContentValues;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    move-result-object v0

    .line 121
    new-instance v1, Lcom/android/providers/contacts/util/SelectionBuilder;

    invoke-direct {v1, p3}, Lcom/android/providers/contacts/util/SelectionBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-direct {p0}, Lcom/android/providers/contacts/VoicemailContentProvider;->cm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/util/SelectionBuilder;->V(Ljava/lang/String;)Lcom/android/providers/contacts/util/SelectionBuilder;

    .line 123
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/VoicemailContentProvider;->a(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;)Lcom/android/providers/contacts/VoicemailTable$Delegate;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/providers/contacts/util/SelectionBuilder;->fn()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, p2, v1, p4}, Lcom/android/providers/contacts/VoicemailTable$Delegate;->a(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
