.class Lcom/android/internal/app/CellonRingtonePickerActivity$ScreenOffBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "CellonRingtonePickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/CellonRingtonePickerActivity$ScreenOffBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/CellonRingtonePickerActivity$ScreenOffBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/internal/app/CellonRingtonePickerActivity$ScreenOffBroadcastReceiver;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/CellonRingtonePickerActivity$ScreenOffBroadcastReceiver$1;->this$1:Lcom/android/internal/app/CellonRingtonePickerActivity$ScreenOffBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/CellonRingtonePickerActivity$ScreenOffBroadcastReceiver$1;->this$1:Lcom/android/internal/app/CellonRingtonePickerActivity$ScreenOffBroadcastReceiver;

    iget-object v0, v0, Lcom/android/internal/app/CellonRingtonePickerActivity$ScreenOffBroadcastReceiver;->this$0:Lcom/android/internal/app/CellonRingtonePickerActivity;

    #getter for: Lcom/android/internal/app/CellonRingtonePickerActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/internal/app/CellonRingtonePickerActivity;->access$200(Lcom/android/internal/app/CellonRingtonePickerActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    return-void
.end method
