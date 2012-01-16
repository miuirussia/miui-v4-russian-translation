.class public Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$BackgroundColorAction;
.super Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;
.source "EditStyledText.java"


# instance fields
.field final synthetic ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;


# direct methods
.method public constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V
    .locals 0
    .parameter

    .prologue
    .line 3146
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$BackgroundColorAction;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    return-void
.end method


# virtual methods
.method protected D()Z
    .locals 1

    .prologue
    .line 3149
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$BackgroundColorAction;->ab:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->d(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->d(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    .line 3150
    const/4 v0, 0x1

    return v0
.end method
