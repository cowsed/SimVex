package main

import (
	"encoding/json"
	"fmt"
	"image/color"
	"io"
	"os"

	g "github.com/AllenDang/giu"
	"github.com/sqweek/dialog"
)

func onBuildClicked() {
	fmt.Println("Building...")
}

func onRunClicked() {
	fmt.Println("Running...")
}
func onClickOpenRobotFolder() {
	fmt.Println("Opening Robot Folder...")
	filename, err := dialog.Directory().Title("Open a Robot Folder").Browse()
	if err != nil {
		fmt.Println("Error Robot Directory Project, ", err)
		return
	}
	options.RobotFolderPath = filename
}
func onClickOpenProjectFolder() {
	fmt.Println("Opening Project Folder...")
	filename, err := dialog.File().Filter("V5Code Project", "v5code").Title("Open .v5code file").Load()
	if err != nil {
		fmt.Println("Error Opening Project, ", err)
		return
	}
	options.ProjectFolderPath = filename
}

var options Options

var titleFont *g.FontInfo

var firstRun = true
var window *g.MasterWindow

var tooltipStyle = g.Style().SetColor(g.StyleColorText, color.Gray{100})

var titleStyle *g.StyleSetter
var titleStyle2 *g.StyleSetter

func loop() {
	if firstRun {
		titleFont = g.GetDefaultFonts()[0].SetSize(40)
		firstRun = false
		titleStyle = g.Style().SetFontSize(20)
		titleStyle2 = g.Style().SetFontSize(20)
		g.GetDefaultFonts()[0].SetSize(15)
	}
	g.SingleWindow().Layout(
		// Title
		g.Label("Sim Vex Setup Utility").Font(titleFont),
		g.Separator(),
		g.Dummy(0, 20),

		// Robot Folder

		titleStyle.To(
			g.Row(
				g.Label("Robot Folder"),
				tooltipStyle.To(
					g.Label("(?)"),
				),
				g.Tooltip(RobotFolderToolTipText),
			),
		),
		g.Row(
			g.InputText(&options.RobotFolderPath).Flags(g.InputTextFlagsReadOnly),
			g.Button("Open## robot folder").OnClick(onClickOpenRobotFolder),
		),
		// Project

		titleStyle2.To(
			g.Row(
				g.Label("Project Folder"),
				tooltipStyle.To(
					g.Label("(?)"),
				),
				g.Tooltip(ProjectFolderToolTipText),
			),
		),
		g.Row(
			g.InputText(&options.ProjectFolderPath).Flags(g.InputTextFlagsReadOnly),
			g.Button("Open## project folder").OnClick(onClickOpenProjectFolder),
		),

		g.Dummy(0, 40),
		g.Separator(),
		g.Row(
			g.Button("Build").OnClick(onBuildClicked),
			g.Button("Run").OnClick(onRunClicked),
		),
		g.PopupModal("Opening").Layout(
			g.Label("Opening in the file dialog"),
		),
	)
	if g.IsKeyPressed(g.KeyEscape) {
		window.Close()
	}
	/*
	*    Setup Utility
	*  Robot Folder (?)
	* _________ [open]
	* Vexcode Project
	* _________ [open]
	*
	* [Build] [Run]
	 */
}

func main() {
	loadDefualts()
	wnd := g.NewMasterWindow("Vex Sim Setup Utility", 400, 400, 0)
	window = wnd
	wnd.Run(loop)
	saveDefualts()
}

var defualts_file string = "defualts.json"

type Options struct {
	RobotFolderPath   string
	ProjectFolderPath string
}

func loadDefualts() {
	f, err := os.Open(defualts_file)
	if err != nil {
		// Couldnt load file
		return
	}
	bs, _ := io.ReadAll(f)
	json.Unmarshal(bs, &options)

}

func saveDefualts() {
	f, err := os.Create(defualts_file)
	if err != nil {
		fmt.Println("error saving defualts: \n", err)
	}

	bs, _ := json.Marshal(options)
	f.Write(bs)
	f.Close()
}
