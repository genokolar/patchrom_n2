.class public abstract Lcom/android/internal/app/CellonAlertActivity;
.super Landroid/app/Activity;
.source "CellonAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface;


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "CellonAlertActivity"


# instance fields
.field protected mAlert:Lcom/android/internal/app/CellonAlertController;

.field protected mAlertParams:Lcom/android/internal/app/CellonAlertController$AlertParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private onAddAdditionListView()V
    .locals 2

    .prologue
    const-string v0, "CellonAlertActivity"

    const-string v1, "onAddAdditionListView - "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/app/CellonAlertActivity;->mAlertParams:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mOnAddAdditionListViewListener:Lcom/android/internal/app/CellonAlertController$AlertParams$OnAddAdditionListViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/CellonAlertActivity;->mAlertParams:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/CellonAlertController$AlertParams;->mOnAddAdditionListViewListener:Lcom/android/internal/app/CellonAlertController$AlertParams$OnAddAdditionListViewListener;

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertActivity;->mAlert:Lcom/android/internal/app/CellonAlertController;

    invoke-virtual {v1}, Lcom/android/internal/app/CellonAlertController;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/CellonAlertController$AlertParams$OnAddAdditionListViewListener;->onAddAdditionListView(Landroid/widget/ListView;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/app/CellonAlertActivity;->finish()V

    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/app/CellonAlertActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/CellonAlertActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/internal/app/CellonAlertController;

    invoke-virtual {p0}, Lcom/android/internal/app/CellonAlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/android/internal/app/CellonAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/internal/app/CellonAlertActivity;->mAlert:Lcom/android/internal/app/CellonAlertController;

    new-instance v0, Lcom/android/internal/app/CellonAlertController$AlertParams;

    invoke-direct {v0, p0}, Lcom/android/internal/app/CellonAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/app/CellonAlertActivity;->mAlertParams:Lcom/android/internal/app/CellonAlertController$AlertParams;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/CellonAlertActivity;->mAlert:Lcom/android/internal/app/CellonAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/CellonAlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/CellonAlertActivity;->mAlert:Lcom/android/internal/app/CellonAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/CellonAlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "CellonAlertActivity"

    const-string v1, "onResume() - "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/CellonAlertActivity;->setupAlert()V

    invoke-direct {p0}, Lcom/android/internal/app/CellonAlertActivity;->onAddAdditionListView()V

    invoke-virtual {p0}, Lcom/android/internal/app/CellonAlertActivity;->setAdapter()V

    return-void
.end method

.method protected setAdapter()V
    .locals 2

    .prologue
    const-string v0, "CellonAlertActivity"

    const-string v1, "setAdapter() - "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/app/CellonAlertActivity;->mAlert:Lcom/android/internal/app/CellonAlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/CellonAlertController;->setAdapter()V

    return-void
.end method

.method protected setupAlert()V
    .locals 2

    .prologue
    const-string v0, "CellonAlertActivity"

    const-string v1, "setupAlert() - "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/app/CellonAlertActivity;->mAlertParams:Lcom/android/internal/app/CellonAlertController$AlertParams;

    iget-object v1, p0, Lcom/android/internal/app/CellonAlertActivity;->mAlert:Lcom/android/internal/app/CellonAlertController;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/CellonAlertController$AlertParams;->apply(Lcom/android/internal/app/CellonAlertController;)V

    iget-object v0, p0, Lcom/android/internal/app/CellonAlertActivity;->mAlert:Lcom/android/internal/app/CellonAlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/CellonAlertController;->installContent()V

    return-void
.end method
