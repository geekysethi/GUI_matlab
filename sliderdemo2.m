function varargout = sliderdemo2(varargin)
% SLIDERDEMO2 MATLAB code for sliderdemo2.fig
%      SLIDERDEMO2, by itself, creates a new SLIDERDEMO2 or raises the existing
%      singleton*.
%
%      H = SLIDERDEMO2 returns the handle to a new SLIDERDEMO2 or the handle to
%      the existing singleton*.
%
%      SLIDERDEMO2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SLIDERDEMO2.M with the given input arguments.
%
%      SLIDERDEMO2('Property','Value',...) creates a new SLIDERDEMO2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before sliderdemo2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to sliderdemo2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help sliderdemo2

% Last Modified by GUIDE v2.5 02-Jul-2015 16:51:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @sliderdemo2_OpeningFcn, ...
                   'gui_OutputFcn',  @sliderdemo2_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before sliderdemo2 is made visible.
function sliderdemo2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to sliderdemo2 (see VARARGIN)

% Choose default command line output for sliderdemo2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes sliderdemo2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);

set(handles.text1,'visible','off')
set(handles.text2,'visible','off')
set(handles.text3,'visible','off')
set(handles.text4,'visible','off')

% --- Outputs from this function are returned to the command line.
function varargout = sliderdemo2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

global v1
v1=get(handles.slider1,'value');
if(v1<=50)
    set(handles.text1,'visible','on')
    set(handles.text2,'visible','off')
else
    set(handles.text2,'visible','on')
    set(handles.text1,'visible','off')
    
end
% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


global v2
v2=get(handles.slider2,'value')

if(v2<=0)
    set(handles.text3,'visible','on')
    set(handles.text4,'visible','off')
else
    set(handles.text4,'visible','on')
    set(handles.text3,'visible','off')
end
% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
