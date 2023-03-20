#include "vex_brain.h"

/*-----------------------------------------------------------------------------*/
/** @file    vex_brain.h
 * @brief   V5 brain class header
 */
/*---------------------------------------------------------------------------*/

namespace vex
{
    // UNKNOWN: think brain is index 0, ports are 1-20, triport are 22
    int brain::_getIndex()
    {
        return 0;
    }

    /**
     * @brief Creates a new brain object.
     */
    brain::brain() { print_unimplimented(); }

    /**
     * @brief Creates a new brain object.
     */
    brain::~brain() { print_unimplimented(); }

    /**
     * @brief Use this class to write or draw to the brain's LCD screen.
     */
    brain::lcd::lcd() { print_unimplimented(); }

    /**
     * @brief Sets the cursor to the row and column number set in the parameters.
     * @param row Sets the row number for where the cursor is placed.
     * @param col Sets the column number for where the cursor is placed.
     */
    void brain::lcd::setCursor(int32_t row, int32_t col) { print_unimplimented(); }

    /**
     * @brief Sets the font type to be displayed on the Screen that is determined by the parameter.
     * @param font The type of font that is displayed.
     */
    void brain::lcd::setFont(fontType font) { print_unimplimented(); }

    /**
     * @brief Sets the pen's width.
     * @param width This represents the width of the pen when drawing. A larger width equals a wider pen stroke.
     */
    void brain::lcd::setPenWidth(uint32_t width) { print_unimplimented(); }

    /**
     * @brief Sets the origin of the screen to the parameters defined in the function.
     * @param x The x location of the origin.
     * @param y The y location of the origin.
     */
    void brain::lcd::setOrigin(int32_t x, int32_t y) { print_unimplimented(); }

    /**
     * @brief An integer that tracks the current cursor position's column, starting at 1.
     * @return Returns an integer that tracks the current cursor position's column, starting at 1.
     */
    int32_t brain::lcd::column()
    {
        print_unimplimented();
        return 0;
    }

    /**
     * @brief An integer that tracks the current cursor position's row, starting at 1.
     * @return Returns an integer that tracks the current cursor position's row, starting at 1.
     */
    int32_t brain::lcd::row()
    {
        print_unimplimented();
        return 0;
    }

    /**
     * @brief Sets the color of the pen to a specified color.
     * @param color A color unit where colors can be defined as names.
     */
    void brain::lcd::setPenColor(const color &color)
    {
        _setPenColor(color.rgb());
    }

    /**
     * @brief Sets the color of the pen to a specified color using a hex value.
     * @param color A hexadecimal value that represents color.
     */
    void brain::lcd::setPenColor(const char *color)
    {
        _setPenColor(webColorToRgb(color));
    }

    /**
     * @brief Sets the color of the pen to a specified color.
     * @param hue The integer represents the hue of the color.
     */
    void brain::lcd::setPenColor(int hue)
    {
        _setPenColor(hueToRgb(hue));
    }

    /**
     * @brief Sets the default fill color for any subsequent draw command.
     * @param color In a color unit, colors can be defined as names.
     */
    void brain::lcd::setFillColor(const color &color)
    {
        _setFillColor(color.rgb());
    }

    /**
     * @brief Sets the default fill color for any subsequent draw command..
     * @param color A hexadecimal value that represents color.
     */
    void brain::lcd::setFillColor(const char *color)
    {
        _setFillColor(webColorToRgb(color));
    }

    /**
     * @brief Sets the default fill color for any subsequent draw command.
     * @param hue The integer represents the hue of the color.
     */
    void brain::lcd::setFillColor(int hue)
    {
        _setFillColor(hueToRgb(hue));
    }

    /**
     * @brief Gets the width in pixels of the given string.
     * @return Returns an integer that represents the width of the string in pixels.
     */
    int32_t brain::lcd::getStringWidth(const char *cstr)
    {
        print_unimplimented();
        return 0;
    }

    /**
     * @brief Gets the height in pixels of the given string.
     * @return Returns an integer that represents the height of the string in pixels.
     */
    int32_t brain::lcd::getStringHeight(const char *cstr)
    {
        print_unimplimented();
        return 0;
    }

    /**
     * @brief Prints a number, string, or Boolean.
     * @param format This is a reference to a char format that prints the value of variables.
     * @param ... A variable list of parameters to insert into format string.
     */
    void brain::lcd::print(const char *format, ...) { print_unimplimented(); }
    void brain::lcd::print(char *format, ...) { print_unimplimented(); }

    /**
     * @brief Prints a number, string, or Boolean at an x, y pixel location.
     * @param x The x-coordinate at which to print a message on the screen.
     * @param y The y-coordinate at which to print a message on the screen.
     * @param format A reference to a char format to print the value of variables.
     * @param ... A variable list of parameters to insert into format string.
     */
    void brain::lcd::printAt(int32_t x, int32_t y, const char *format, ...)
    {
        char *adding_buffer;
        va_list arg;
        va_start(arg, format);
        vasprintf(&adding_buffer, format, arg);
        va_end(arg);

        sim::brain_screen::print_at_internal(x, y, true, adding_buffer);

        free(adding_buffer);
    }

    /**
     * @brief Prints a number, string, or Boolean at an x, y pixel location with the ability to be transparent.
     * @param x The x pixel location where the print should start
     * @param y The y pixel location where the print should start
     * @param bOpaque If set to false, the print will be transparent.
     * @param format A reference to a char format to print the value of variables.
     * @param ... A variable list of parameters to insert into format string.
     */
    void brain::lcd::printAt(int32_t x, int32_t y, bool bOpaque, const char *format, ...)
    {
        char *adding_buffer;
        va_list arg;
        va_start(arg, format);
        vasprintf(&adding_buffer, format, arg);
        va_end(arg);

        sim::brain_screen::print_at_internal(x, y, bOpaque, adding_buffer);

        free(adding_buffer);
    }

    /**
     * @brief Clears the whole Screen to a default color or otherwise specified color.
     */
    void brain::lcd::clearScreen(void)
    {
        // clear to black
        vexDisplayClipRegionClear();
    }

    /**
     * @brief Clears the whole Screen to a default color or otherwise specified color.
     * @param color In a color unit, colors can be defined as names.
     */
    void brain::lcd::clearScreen(const color &color)
    {
        sim::brain_screen::clear_clip_space_internal(color.rgb());
    }

    /**
     * @brief Clears the whole Screen to a default color or otherwise specified color.
     * @param color A hexadecimal value that represents color.
     */
    void brain::lcd::clearScreen(const char *color)
    {
        sim::brain_screen::clear_clip_space_internal(webColorToRgb(color));
    }

    /**
     * @brief Clears the whole Screen to a default color or otherwise specified color.
     * @param hue The integer represents the hue of the color.
     */
    void brain::lcd::clearScreen(int hue)
    {
        sim::brain_screen::clear_clip_space_internal(hueToRgb(hue));
    }

    /**
     * @brief Clears the specified line and sets it to a specified color.
     * @param number The integer sets the line that is to be cleared.
     * @param color A color unit where colors can be defined as names.
     */
    void brain::lcd::clearLine(int number, const color &color) { print_unimplimented(); }

    /**
     * @brief Clears the specified line and sets it to a specified color.
     * @param number The integer sets the line that is to be cleared.
     * @param color A hexadecimal value that represents color.
     */
    void brain::lcd::clearLine(int number, const char *color) { print_unimplimented(); }

    /**
     * @brief Clears the specified line and sets it to a specified color.
     * @param number The integer sets the line that is to be cleared.
     * @param hue An integer that represents the hue of the color.
     */
    void brain::lcd::clearLine(int number, int hue) { print_unimplimented(); }

    /**
     * @brief Clears the specified line and sets it to the background color.
     * @param number The integer sets the line that is to be cleared.
     */
    void brain::lcd::clearLine(int number) { print_unimplimented(); }

    /**
     * @brief Clears the rest of the line from where the cursor is located.
     */
    void brain::lcd::clearLine(void) { print_unimplimented(); }

    /**
     * @brief Clears the rest of the line from where the cursor is located and then moves the cursor to the beginning of the next line.
     */
    void brain::lcd::newLine(void) { print_unimplimented(); }

    /**
     * @brief Draws a single pixel to the screen in the specified x and y location.
     * @param x The x location of where to draw the pixel.
     * @param y The y location of where to draw the pixel.
     */
    void brain::lcd::drawPixel(int x, int y) { print_unimplimented(); }

    /**
     * @brief Draws a line connecting the two specified points in the parameters.
     * @param x1 The x location of the first point.
     * @param y1 The y location of the first point.
     * @param x2 The x location of the second point.
     * @param y2 The y location of the second point.
     */
    void brain::lcd::drawLine(int x1, int y1, int x2, int y2) { print_unimplimented(); }

    // Rectangle
    /**
     * @brief Draws a rectangle using the specified points and attributes set in the parameters. Fills the rectangle with the current pen and fill color.
     * @param x The x-coordinate at which the left edge of the rectangle will be drawn on the screen.
     * @param y The y-coordinate at which the top edge of the rectangle will be drawn on the screen.
     * @param width The width of the rectangle.
     * @param height The height of the rectangle.
     */
    void brain::lcd::drawRectangle(int x, int y, int width, int height)
    {
        sim::brain_screen::draw_rect_border_internal(x, y, width, height, sim::brain_screen::get_bg_col_internal(), sim::brain_screen::get_fg_col_internal(), sim::brain_screen::get_pen_width());
    }

    /**
     * @brief Draws a rectangle using the specified points and attributes set in the parameters. Fills the rectangle with the color specified.
     * @param x The x-coordinate at which the left edge of the rectangle will be drawn on the screen.
     * @param y The y-coordinate at which the top edge of the rectangle will be drawn on the screen.
     * @param width The width of the rectangle.
     * @param height The height of the rectangle.
     * @param color A color unit where colors can be defined as names.
     */
    void brain::lcd::drawRectangle(int x, int y, int width, int height, const color &color)
    {
        _drawRectangle(x, y, width, height, color.rgb());
    }

    /**
     * @brief Draws a rectangle using the specified points and attributes set in the parameters. Fills the rectangle with the color specified.
     * @param x The x-coordinate at which the left edge of the rectangle will be drawn on the screen.
     * @param y The y-coordinate at which the top edge of the rectangle will be drawn on the screen.
     * @param width The width of the rectangle.
     * @param height The height of the rectangle.
     * @param color A hexadecimal value that represents color.
     */
    void brain::lcd::drawRectangle(int x, int y, int width, int height, const char *color) { print_unimplimented(); }

    /**
     * @brief Draws a rectangle using the specified points and attributes set in the parameters. Fills the rectangle with the color specified.
     * @param x The x-coordinate at which the left edge of the rectangle will be drawn on the screen.
     * @param y The y-coordinate at which the top edge of the rectangle will be drawn on the screen.
     * @param width The width of the rectangle.
     * @param height The height of the rectangle.
     * @param hue The color of the rectangle.
     */
    void brain::lcd::drawRectangle(int x, int y, int width, int height, int hue)
    {
        vex::color col;
        _drawRectangle(x, y, width, height, hueToRgb(hue));
    }

    /**
     * @brief Draws a circle using the specified points and attributes set in the parameters. Fills the circle with the current pen and fill color.
     * @param x The central x location of the circle.
     * @param y The central y location of the circle.
     * @param radius Sets the radius of the circle to be drawn on the Screen.
     */
    void brain::lcd::drawCircle(int x, int y, int radius) { print_unimplimented(); }

    /**
     * @brief Draws a circle using the specified points and attributes set in the parameters. Fills the circle with the color specified.
     * @param x The central x location of the circle.
     * @param y The central y location of the circle.
     * @param radius Sets the radius of the circle to be drawn on the Screen.
     * @param color A color unit where colors can be defined as names.
     */
    void brain::lcd::drawCircle(int x, int y, int radius, const color &color) { print_unimplimented(); }

    /**
     * @brief Draws a circle using the specified points and attributes set in the parameters. Fills the circle with the color specified.
     * @param x The central x location of the circle.
     * @param y The central y location of the circle.
     * @param radius Sets the radius of the circle to be drawn on the Screen.
     * @param color A hexadecimal value that represents color.
     */
    void brain::lcd::drawCircle(int x, int y, int radius, const char *color) { print_unimplimented(); }

    /**
     * @brief Draws a circle using the specified points and attributes set in the parameters. Fills the circle with the color specified.
     * @param x The central x location of the circle.
     * @param y The central y location of the circle.
     * @param radius Sets the radius of the circle to be drawn on the Screen.
     * @param hue An integer that represents the hue of the color.
     */
    void brain::lcd::drawCircle(int x, int y, int radius, int hue) { print_unimplimented(); }

    /**
     * @brief Sets the function to be called when the Screen is pressed.
     * @param callback A reference to a function.
     */
    void brain::lcd::pressed(void (*callback)(void))
    {
        sim::event_handler::set_event_callback(_getIndex(), (int)tEventType::EVENT_LCD_PRESSED, callback);
    }

    /**
     * @brief Sets the function to be called when the Screen is pressed.  A void pointer may be passed to the callback.
     * @param callback A reference to a function.
     * @param arg A void pointer that will be passed to the callback.
     */
    void brain::lcd::pressed(void (*callback)(void *), void *arg) { print_unimplimented(); }

    /**
     * @brief Sets the function to be called when the screen is released after being pressed.
     * @param callback A reference to a function.
     */
    void brain::lcd::released(void (*callback)(void))
    {
        sim::event_handler::set_event_callback(_getIndex(), (int)tEventType::EVENT_LCD_RELEASED, callback);
    }
    /**
     * @brief Sets the function to be called when the screen is released after being pressed.  A void pointer may be passed to the callback.
     * @param callback A reference to a function.
     * @param arg A void pointer that will be passed to the callback.
     */
    void brain::lcd::released(void (*callback)(void *), void *arg) { print_unimplimented(); }

    /**
     * @brief Gets the last x location pressed on the screen.
     * @return Returns an integer that represents the last x location pressed on the screen.
     */
    int32_t brain::lcd::xPosition()
    {
        return sim::brain_screen::get_touch_status_internal()->lastXpos;
    }

    /**
     * @brief Gets the last y location pressed on the screen.
     * @return Returns an integer that represents the last y location pressed on the screen.
     */
    int32_t brain::lcd::yPosition()
    {
        return sim::brain_screen::get_touch_status_internal()->lastYpos;
    }

    /**
     * @brief Gets the pressed status of the Screen.
     * @return Returns a Boolean based on the state of a press on the screen. If the screen is pressed, the Boolean will be true, if the button is released, the Boolean will be false.
     */
    bool brain::lcd::pressing()
    {
        static V5_TouchStatus td;
        vexTouchDataGet(&td);
        return td.lastEvent == V5_TouchEvent::kTouchEventPress;
    }

    /**
     * @brief Switches to double buffering or renders back buffer to screen.
     * @return Returns true if the back buffer was successfully copied to the screen.
     */
    bool brain::lcd::render()
    {
        print_unimplimented();
        return false;
    }

    /**
     * @brief Switches to double buffering or renders back buffer to screen.
     * @param bVsyncWait If true, wait for the Vsync signal to render.
     * @param bRunScheduler (Optional) If true, run background tasks while waiting to render. By default, this parameter is true.
     * @return Returns true if the back buffer was successfully copied to the screen.
     */
    bool brain::lcd::render(bool bVsyncWait, bool bRunScheduler)
    {
        print_unimplimented();
        return false;
    }

    /**
     * @brief Sets the clip region for screen output.  Only effects the current thread.
     * @param x The x-coordinate at the left edge of the clip region.
     * @param y The y-coordinate at the top edge of the clip region.
     * @param width The width of the clip region.
     * @param height The height of the clip region.
     */
    void brain::lcd::setClipRegion(int x, int y, int width, int height)
    {
        sim::brain_screen::set_clip_space_internal(x, y, x + width, y + height);
    }

    /**
     * @brief Draws an image on the screen using the contents of the memory buffer.
     * @param buffer A pointer to a buffer containing image data in either bmp or png format.
     * @param x The x-coordinate at which the left edge of the image will be drawn.
     * @param y The y-coordinate at which the top edge of the image will be drawn.
     * @param bufferLen The size of the source image buffer in bytes.
     * @return Returns true if the image was successfully drawn on the screen.
     * @details
     *  This function draws an image on the screen using the contents of a buffer into which
     *  either BMP or PNG raw data has already been read.  The contents may have come from a
     *  file on the SD card or have been statically declared in the code.  The image should be
     *  no larger than the V5 Screen, that is, a maximum of 480 pixels wide by 272 pixels high.
     *  The top/left corner of the image is placed at the coordinates given by x and y, these can
     *  be negative if desired.
     */
    bool brain::lcd::drawImageFromBuffer(uint8_t *buffer, int x, int y, int bufferLen)
    {
        print_unimplimented();
        return false;
    }

    /**
     * @brief Draws an image on the screen using the contents of the memory buffer.
     * @param buffer A pointer to a buffer containing raw 32 bit per pixel image data.
     * @param x The x-coordinate at which the left edge of the image will be drawn.
     * @param y The y-coordinate at which the top edge of the image will be drawn.
     * @param width The width of the image.
     * @param height The height of the image.
     * @return Returns true if the image was successfully drawn on the screen.
     * @details
     *  This funtion draws an image on the screen using the contents of a buffer into which
     *  raw RGB pixels have been placed.  Each pixel is represented by a 32 bit value, however,
     *  only the lower 24 bits are used as transparency is not yet supported.  The buffer contains
     *  pixels for the first row of the image immediately followed by pixels for the second row and so on.
     *  The image should be no larger than the V5 Screen, that is, a maximum of 480 pixels wide by 272 pixels high.
     *  The top/left corner of the image is placed at the coordinates given by x and y, these can
     *  be negative if desired.
     */
    bool brain::lcd::drawImageFromBuffer(uint32_t *buffer, int x, int y, int width, int height)
    {
        print_unimplimented();
        return false;
    }

    /**
     * @brief Draws an image on the screen using a file on the SD Card as the source.
     * @param name The name of the image, it must have either a ".bmp" or ".png" extension.
     * @param x The x-coordinate at which the left edge of the image will be drawn.
     * @param y The y-coordinate at which the top edge of the image will be drawn.
     * @return Returns true if the image was successfully drawn on the screen.
     * @details
     *  This funtion draws an image on the screen using the contents of a file on an SD Card.
     *  The file should be no larger than 512K bytes and must have either a ".bmp" or ".png" extension.
     *  The image should be no larger than the V5 Screen, that is, a maximum of 480 pixels wide by 272 pixels high.
     *  The top/left corner of the image is placed at the coordinates given by x and y, these can
     *  be negative if desired.
     */
    bool brain::lcd::drawImageFromFile(const char *name, int x, int y)
    {
        print_unimplimented();
        return false;
    }

    // not for public use yet
    void brain::lcd::waitForRefresh() { print_unimplimented(); }
    void brain::lcd::renderDisable() { print_unimplimented(); }

    /// @brief base set pen color using system format
    /// @param rgb integer color 0xAARRGGBB
    void brain::lcd::_setPenColor(uint32_t rgb)
    {
        sim::brain_screen::set_fg_col_internal(rgb);
    }
    /// @brief base set fill color using system format
    /// @param rgb integer color 0xAARRGGBB
    void brain::lcd::_setFillColor(uint32_t rgb)
    {
        sim::brain_screen::set_bg_col_internal(rgb);
    }
    void brain::lcd::_clearScreen(uint32_t rgb) { sim::brain_screen::clear_clip_space_internal(rgb); }
    void brain::lcd::_clearLine(int number, uint32_t rgb) { print_unimplimented(); }
    void brain::lcd::_drawRectangle(int x, int y, int width, int height, uint32_t rgb)
    {
        sim::brain_screen::draw_rect_internal(x, y, width, height, rgb);
    }
    void brain::lcd::_drawCircle(int x, int y, int radius, uint32_t rgb) { print_unimplimented(); }

    brain::lcd::tImageBufferType brain::lcd::_validateImageBuffer(uint8_t *buffer)
    {
        print_unimplimented();
        return brain::lcd::tImageBufferType::kImageBufferTypeUnknown;
    }

    uint32_t brain::lcd::webColorToRgb(const char *color)
    {
        vex::color col;
        col.web(color);
        return col.rgb();
    }
    uint32_t brain::lcd::hueToRgb(uint32_t color)
    {
        vex::color col;
        col.hsv(color, 1.0, 1.0);
        return col.rgb();
    }

    /**
     * @brief Gets the value of the timer in the units specified.
     * @param units The unit of time that will be returned.
     * @return Returns a double that represents the value of the timer.
     */
    double brain::timer(timeUnits units)
    {
        print_unimplimented();
        return 0.0;
    }

    /**
     * @brief Resets the timer to zero.
     */
    void brain::resetTimer() { print_unimplimented(); }

    /**
     * @brief Sets the timer to a value and time unit.
     * @param value The value that the timer is set to.
     * @param units The unit of time that will be returned.
     */
    void brain::setTimer(double value, timeUnits units) { print_unimplimented(); }

    /*----------------------------------------------------------------------------*/
    /**
     * @brief Gets the battery capacity.
     * @return Returns an integer that represents the batteries capacity in the units specified by the parameter.
     * @param units (Optional) The type of unit that will be returned. By default, this parameter is a percentage.
     */
    uint32_t brain::battery::capacity(percentUnits units)
    {
        print_unimplimented();
        return 0;
        return 0;
    }

    /**
     * @brief Gets the battery temperature.
     * @return Returns a double that represents the batteries temperature in the units specified by the parameter.
     * @param units (Optional) The type of unit that will be returned. By default, this parameter is a percentage.
     */
    double brain::battery::temperature(percentUnits units)
    {
        print_unimplimented();
        return 0.0;
    }

    /**
     * @brief Gets the battery temperature.
     * @return Returns a double that represents the batteries temperature in the units specified by the parameter.
     * @param units The unit of temperature that will be returned.
     */
    double brain::battery::temperature(temperatureUnits units)
    {
        print_unimplimented();
        return 0.0;
    }

    /**
     * @brief Gets the battery voltage.
     * @return Returns a double that represents the batteries voltage in the units specified by the parameter.
     * @param units The unit of voltage to be returned.
     */
    double brain::battery::voltage(voltageUnits units)
    {
        print_unimplimented();
        return 0.0;
    }

    /**
     * @brief Gets the battery current.
     * @return Returns a double that represents the batteries current in the units specified by the parameter.
     * @param units The type of current to be returned.
     */
    double brain::battery::current(currentUnits units)
    {
        print_unimplimented();
        return 0.0;
    }

    brain::sdcard::sdcard() { print_unimplimented(); }
    brain::sdcard::~sdcard() { print_unimplimented(); }

    /**
     * @brief Gets the state of the SD card
     * @return Returns true if the SD card is inserted. Returns false if there is not an SD card inserted.
     */
    bool brain::sdcard::isInserted()
    {
        print_unimplimented();
        return false;
    }

    /**
     * @return Returns the number of bytes read from the file.
     * @brief Loads a file from the SD card.
     * @param name The name of the file.
     * @param buffer Pointer to a buffer for file data.
     * @param len The length of the buffer in bytes. Usually set to the max length of the buffer.
     */
    int32_t brain::sdcard::loadfile(const char *name, uint8_t *buffer, int32_t len)
    {
        print_unimplimented();
        return 0;
    }

    /**
     * @brief Saves a file to the SD card.
     * @return Returns the number of bytes saved to the file.
     * @param name The name of the file.
     * @param buffer Pointer to a buffer with file data.
     * @param len The length of the buffer in bytes. Usually set to the max length of the buffer.
     */
    int32_t brain::sdcard::savefile(const char *name, uint8_t *buffer, int32_t len)
    {
        print_unimplimented();
        return 0;
    }

    /**
     * @brief Appends data to an existing file.
     * @return Returns the number of bytes saved to the file.
     * @param name The name of the file.
     * @param buffer Pointer to a buffer with file data.
     * @param len The length of the buffer in bytes. Usually set to the max length of the buffer.
     */
    int32_t brain::sdcard::appendfile(const char *name, uint8_t *buffer, int32_t len)
    {
        print_unimplimented();
        return 0;
    }

    /**
     * @brief get the size in bytes of the named file
     * @return size of file in bytes
     * @param name The name of the file.
     */
    int32_t brain::sdcard::size(const char *name)
    {
        print_unimplimented();
        return 0;
    }

    /**
     * @brief check if the named file exists
     * @return true if the file exists
     * @param name The name of the file.
     */
    bool brain::sdcard::exists(const char *name)
    {
        print_unimplimented();
        return false;
    }
}
